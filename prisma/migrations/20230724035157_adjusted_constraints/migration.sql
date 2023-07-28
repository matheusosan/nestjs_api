/*
  Warnings:

  - Made the column `funkoId` on table `Image` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "Image" DROP CONSTRAINT "Image_funkoId_fkey";

-- AlterTable
ALTER TABLE "Image" ALTER COLUMN "funkoId" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "Image" ADD CONSTRAINT "Image_funkoId_fkey" FOREIGN KEY ("funkoId") REFERENCES "Funko"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
