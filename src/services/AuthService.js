import { UserRepository } from '../repositories/UserRepository.js';
import jwt from 'jsonwebtoken';

export class AuthService {
    constructor(db, env) {
        this.userRepository = new UserRepository(db);
        this.env = env;
    }

    async getProfile(userId) {
        const user = await this.userRepository.findById(userId);
        if (!user) {
            throw new Error("User not found");
        }
        return user;
    }

    async verifyUser(adminUserId, targetUserId) {
        // Business logic: only admins can verify. This is usually guarded by middleware, 
        // but we can double check here or just perform the action.
        const adminUser = await this.userRepository.findById(adminUserId);
        if (!adminUser || adminUser.role !== 'admin') {
            throw new Error("Forbidden: Admin access required");
        }

        await this.userRepository.updateVerificationStatus(targetUserId, 'verified');
        return { success: true };
    }
    
    generateToken(user) {
        return jwt.sign(
            { sub: user.id, email: user.email, name: user.full_name, role: user.role, status: user.verification_status },
            this.env.JWT_SECRET || 'fallback_secret',
            { expiresIn: '7d' }
        );
    }
}
