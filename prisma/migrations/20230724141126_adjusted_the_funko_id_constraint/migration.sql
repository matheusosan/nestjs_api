-- DropForeignKey
ALTER TABLE "Image" DROP CONSTRAINT "Image_funkoId_fkey";

-- AlterTable
ALTER TABLE "Image" ALTER COLUMN "funkoId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Image" ADD CONSTRAINT "Image_funkoId_fkey" FOREIGN KEY ("funkoId") REFERENCES "Funko"("id") ON DELETE SET NULL ON UPDATE CASCADE;
