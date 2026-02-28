import boto3
from botocore.config import Config
from app.core.config import settings

class R2Storage:
    def __init__(self):
        self.s3_client = boto3.client(
            's3',
            endpoint_url=settings.R2_ENDPOINT_URL,
            aws_access_key_id=settings.R2_ACCESS_KEY_ID,
            aws_secret_access_key=settings.R2_SECRET_ACCESS_KEY,
            config=Config(signature_version='s3v4'),
            region_name='auto'  # R2 uses 'auto'
        )
        self.bucket = settings.R2_BUCKET_NAME

    async def upload_file(self, file_content: bytes, file_name: str, content_type: str):
        self.s3_client.put_object(
            Bucket=self.bucket,
            Key=file_name,
            Body=file_content,
            ContentType=content_type
        )
        return f"{settings.R2_PUBLIC_URL}/{file_name}"

    async def get_download_url(self, file_name: str, expires_in: int = 3600):
        url = self.s3_client.generate_presigned_url(
            'get_object',
            Params={'Bucket': self.bucket, 'Key': file_name},
            ExpiresIn=expires_in
        )
        return url

storage = R2Storage()
