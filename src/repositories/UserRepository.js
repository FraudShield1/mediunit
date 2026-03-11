export class UserRepository {
    constructor(db) {
        this.db = db;
    }

    async findById(id) {
        return await this.db.prepare(
            "SELECT id, email, full_name, clinic_name, specialty, city, verification_status, role, inpe_number FROM user WHERE id = ?"
        ).bind(id).first();
    }

    async findAll() {
        return await this.db.prepare(`
            SELECT id, email, full_name, clinic_name, specialty, inpe_number, city,
                   verification_status, role, rejection_reason, verification_license_url, created_at
            FROM user
            ORDER BY created_at DESC
        `).all();
    }

    async findByEmail(email) {
        return await this.db.prepare(
            "SELECT * FROM user WHERE email = ?"
        ).bind(email).first();
    }

    async create(user) {
        return await this.db.prepare(`
            INSERT INTO user (id, email, password_hash, full_name, clinic_name, registry_file_url, id_card_url, signature_url, inpe_number, specialty, role, city, verification_status, created_at)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'pending', datetime('now'))
        `).bind(
            user.id, user.email, user.password_hash, user.full_name, user.clinic_name, 
            user.registry_file_url || null, user.id_card_url || null, user.signature_url || null, 
            user.inpe_number || null, user.specialty || null, 'user', user.city || 'Casablanca'
        ).run();
    }

    async updateVerificationStatus(id, status, reason = null) {
        return await this.db.prepare(
            "UPDATE user SET verification_status = ?, rejection_reason = ? WHERE id = ?"
        ).bind(status, reason, id).run();
    }
}
