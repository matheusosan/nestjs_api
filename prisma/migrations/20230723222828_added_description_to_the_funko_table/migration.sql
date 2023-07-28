/*
  Warnings:

  - Added the required column `description` to the `Funko` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Funko" ADD COLUMN     "description" TEXT NOT NULL;
