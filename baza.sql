USE [master]
GO
/****** Object:  Database [Baze3]    Script Date: 29.12.2022. 13:59:49 ******/
CREATE DATABASE [Baze3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Baze3', FILENAME = N'C:\Users\nebojsa.marjanovic\Baze3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [2020] 
( NAME = N'Racuni2020', FILENAME = N'C:\Users\nebojsa.marjanovic\Racuni2020.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [2021] 
( NAME = N'Racuni2021', FILENAME = N'C:\Users\nebojsa.marjanovic\Racuni2021.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [2022] 
( NAME = N'Racuni2022', FILENAME = N'C:\Users\nebojsa.marjanovic\Racuni2022.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [Pre2020] 
( NAME = N'RacuniPre2020', FILENAME = N'C:\Users\nebojsa.marjanovic\RacuniPre2020.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Baze3_log', FILENAME = N'C:\Users\nebojsa.marjanovic\Baze3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Baze3] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Baze3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Baze3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Baze3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Baze3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Baze3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Baze3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Baze3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Baze3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Baze3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Baze3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Baze3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Baze3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Baze3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Baze3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Baze3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Baze3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Baze3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Baze3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Baze3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Baze3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Baze3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Baze3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Baze3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Baze3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Baze3] SET  MULTI_USER 
GO
ALTER DATABASE [Baze3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Baze3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Baze3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Baze3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Baze3] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Baze3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Baze3] SET QUERY_STORE = OFF
GO
USE [Baze3]
GO
/****** Object:  SqlAssembly [Placanje]    Script Date: 29.12.2022. 13:59:49 ******/
CREATE ASSEMBLY [Placanje]
FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C0103000F4AA8630000000000000000E00022200B013000000E000000060000000000008E2D00000020000000400000000000100020000000020000040000000000000006000000000000000080000000020000000000000300608500001000001000000000100000100000000000001000000000000000000000003C2D00004F000000004000009002000000000000000000000000000000000000006000000C000000042C00001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E74657874000000940D000000200000000E000000020000000000000000000000000000200000602E7273726300000090020000004000000004000000100000000000000000000000000000400000402E72656C6F6300000C0000000060000000020000001400000000000000000000000000004000004200000000000000000000000000000000702D0000000000004800000002000500C42300004008000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000005E0002037D0100000402047D0200000402167D030000042A133001000C0000000100001100027B030000040A2B00062A133002001700000002000011001200FE15020000021200177D03000004060B2B00072A00133004004600000003000011000228020000060A062C0872010000700B2B3100178D0D00000125161F3B9D730500000A0C027C01000004280600000A08027C02000004280700000A280800000A0B2B00072A0000133005007E00000004000011000F00280900000A0A062C0828030000060B2B68001202FE1502000002028C09000001280A00000A0D14130409178D0D00000125161F3B9D6F0B00000A13041104169A280C00000A1305110569280600000600120211057D010000041104179A280D00000A13061106280600000600120211067D02000004080B2B00072A0000133002001600000001000011000216FE040A062C0C007205000070730E00000A7A2A0000133001000C0000000500001100027B010000040A2B00062A420002037D0100000402167D030000042A000000133001000C0000000600001100027B020000040A2B00062A420002037D0200000402167D030000042A000000133002002E0000000700001100027B0200000416FE010A062C0D002300000000000000000B2B110228070000060228090000066C5B0B2B00072A0000133001002500000008000011000228020000060A062C04160B2B1402FE16020000026F0F00000A6F1000000A0B2B00072A000000133002008700000009000011000314FE010B072C04170C2B7803A5020000020A120014FE16020000026F1100000A0D092C0B723F000070731200000A7A022802000006130411042C160012002802000006130511052C04160C2B36150C2B3212002802000006130611062C04170C2B2102FE16020000026F0F00000A1200FE16020000026F0F00000A6F1300000A0C2B00082A0013300200560000000A000011000228020000062D03162B0117D20A03066F1400000A000617FE010B072C03002B3302280700000669280600000600030228070000066F1500000A00027B0200000428060000060003027B020000046F1600000A002A0000133002004D0000000B00001100036F1700000A0A0617FE010D092C0A0002177D030000042B3202167D03000004036F1800000A0B076928060000060002077D01000004036F1900000A0C0828060000060002087D020000042A00000042534A4201000100000000000C00000076342E302E33303331390000000005006C00000050030000237E0000BC030000AC02000023537472696E677300000000680600009400000023555300FC0600001000000023475549440000000C0700003401000023426C6F6200000000000000020000015717A2010900000000FA013300160000010000001300000002000000030000000F000000090000000100000019000000040000000B0000000100000004000000060000000100000002000000000059010100000000000600E70013020600070113020600B70000020F00330200000A007F02DF010A00CB00DF010600A1007B010A00830042020A0034014202060086027B010600D2011C000600BF011C000600BA017B01060040017B0106009A007B0106000D007B01060093027B01060082017B0106009E017B010000000013000000000001000100092110007A0000001D000100010001007202B60001005000B90001007501BC005020000000008618FA01BF000100682000000000E6096A014500030080200000000096086101C5000300A42000000000C6003E012D000300F820000000009600AB00CA00030084210000000091004701D1000400A8210000000086085E02A9000500C021000000008608680299000500D421000000008608360076000600EC2100000000860843000100060000220000000086009B02A90007003C2200000000C6006E00760007007022000000008600B001D60007000423000000008600B100DB00080068230000000086006900E1000900000001007202000002005900000001007602000001005401000001002E01000001002E0100000100CC0100000100A90200000100FE01020021000900FA0101001100FA0106001900FA010A003100FA0110007100FA01270079003E012D0081003E012D0071007802310049006A01450089003E01490071008D024E0089009800550089000B005A009100FA015F0051003E012D0051006E0076005100570285009900FA015F007100B0018A005900B10094005900B10099005900B100010061002501A50061008D00A9006100010076002E000B00F8002E00130001012E001B00200143002300290116001A0021003800640068006C0071007A008F009E000200010000006E01E70000007001EB0000006C02F00000004700F40002000200030002000300050002000700070001000800070002000900090001000A00090004800000000000000000000000000000000026000000040000000000000000000000AD00600000000000040000000000000000000000AD002A0000000000000000000052656164496E74333200546F496E743332003C4D6F64756C653E0053797374656D2E494F005544540053797374656D2E44617461006765745F42726F6A52617461007365745F42726F6A526174610062726F6A5261746100627252617461006D73636F726C696200526561640047657448617368436F646500506C6163616E6A6500494E756C6C61626C650052656164446F75626C6500546F446F75626C650056616C7565547970650050617273650057726974650044656275676761626C654174747269627574650053716C55736572446566696E65645479706541747472696275746500436F6D70696C6174696F6E52656C61786174696F6E734174747269627574650052756E74696D65436F6D7061746962696C6974794174747269627574650052656164427974650076616C75650053716C537472696E6700546F537472696E670056616C696461746542726F6A0062726F6A005544542E646C6C006765745F4E756C6C006765745F49734E756C6C005F6E756C6C0053797374656D00417267756D656E744F75744F6652616E6765457863657074696F6E00417267756D656E74457863657074696F6E00436F6D70617265546F00436861720042696E617279526561646572006F746865720042696E617279577269746572004D6963726F736F66742E53716C5365727665722E536572766572002E63746F720053797374656D2E446961676E6F73746963730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300446562756767696E674D6F6465730053797374656D2E446174612E53716C547970657300457175616C73006765745F497A6E6F73007365745F497A6E6F7300697A6E6F7300436F6E63617400466F726D6174004F626A6563740053706C697400436F6E7665727400497A726163756E616A5261747500770000000330000039420072006F006A0020006E00650020006D006F007E0165002000620069007400690020006D0061006E006A00690020006F006400200030000153740068006500200061007200750067006D0065006E007400200074006F00200063006F006D00700061007200650020006900730020006E006F00740020006100200050006C006100630061006E006A0065000000F933F2345028C34DA7750371304D9B92000420010108032000010520010111110520010111150307010206070211081108050703020E0E052001011D030320000E0600030E0E0E0E0C070702110811080E1D0E0D08032000020400010E1C0620011D0E1D030400010D0E040001080E042001010E0307010D03070108040702020D0407020208032000080A07071108020802020202042001021C042001080E04070205020420010105042001010D060704050D0802032000050320000D08B77A5C561934E08902060D020608020602052002010D080400001108060001110811250400010108042001081C05200101122D0520010112310328000204080011080328000D032800080801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F7773010801000701000000000801000100000000000000000000000F4AA86300000000020000001C010000202C0000200E0000525344530A36BC606E41B54084B5625008E10E7E01000000433A5C55736572735C6E65626F6A73612E6D61726A616E6F7669635C736F757263655C7265706F735C42617A653350726F6A656B61745C42617A653350726F6A656B61745C5544545C6F626A5C44656275675C5544542E7064620000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000642D000000000000000000007E2D0000002000000000000000000000000000000000000000000000702D0000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF250020001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100100000001800008000000000000000000000000000000100010000003000008000000000000000000000000000000100000000004800000058400000340200000000000000000000340234000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000000000000000000000000000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B00494010000010053007400720069006E006700460069006C00650049006E0066006F0000007001000001003000300030003000300034006200300000002C0002000100460069006C0065004400650073006300720069007000740069006F006E000000000020000000300008000100460069006C006500560065007200730069006F006E000000000030002E0030002E0030002E003000000030000800010049006E007400650072006E0061006C004E0061006D00650000005500440054002E0064006C006C0000002800020001004C006500670061006C0043006F0070007900720069006700680074000000200000003800080001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000005500440054002E0064006C006C000000340008000100500072006F006400750063007400560065007200730069006F006E00000030002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000030002E0030002E0030002E0030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000C000000903D00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
WITH PERMISSION_SET = SAFE
GO
/****** Object:  Default [Default_PIB]    Script Date: 29.12.2022. 13:59:49 ******/
CREATE DEFAULT [dbo].[Default_PIB] 
AS
-1
GO
/****** Object:  PartitionFunction [DATUMIZDAVANJA_PARTITION_FUNCTION]    Script Date: 29.12.2022. 13:59:49 ******/
CREATE PARTITION FUNCTION [DATUMIZDAVANJA_PARTITION_FUNCTION](date) AS RANGE LEFT FOR VALUES (N'2019-12-31T00:00:00.000', N'2020-12-31T00:00:00.000', N'2021-12-31T00:00:00.000', N'2022-12-31T00:00:00.000')
GO
/****** Object:  PartitionScheme [DATUMIZDAVANJA_PARTITION_SCHEME]    Script Date: 29.12.2022. 13:59:49 ******/
CREATE PARTITION SCHEME [DATUMIZDAVANJA_PARTITION_SCHEME] AS PARTITION [DATUMIZDAVANJA_PARTITION_FUNCTION] TO ([Pre2020], [2020], [2021], [2022], [PRIMARY])
GO
/****** Object:  Rule [Rule_PIB]    Script Date: 29.12.2022. 13:59:49 ******/
CREATE RULE [dbo].[Rule_PIB] 
AS
(@PIB=-1)
OR (LEN(@PIB)=9)
GO
/****** Object:  UserDefinedDataType [dbo].[PIB]    Script Date: 29.12.2022. 13:59:49 ******/
CREATE TYPE [dbo].[PIB] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedType [dbo].[Placanje]    Script Date: 29.12.2022. 13:59:49 ******/
CREATE TYPE [dbo].[Placanje]
EXTERNAL NAME [Placanje].[Placanje]
GO
/****** Object:  Table [dbo].[ZaposleniPodaci]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZaposleniPodaci](
	[IDZaposlenog] [int] NOT NULL,
	[ImePrezime] [varchar](50) NOT NULL,
	[IDRadnogMesta] [int] NOT NULL,
 CONSTRAINT [PK_ZaposleniPodaci] PRIMARY KEY CLUSTERED 
(
	[IDZaposlenog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZaposleniDetalji]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZaposleniDetalji](
	[IDZaposlenog] [int] NOT NULL,
	[DatumZaposlenja] [date] NOT NULL,
	[BrojTelefona] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ZaposleniDetalji] PRIMARY KEY CLUSTERED 
(
	[IDZaposlenog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Zaposleni_View]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Zaposleni_View] AS
SELECT zp.IDZaposlenog, zp.ImePrezime,zp.IDRadnogMesta, zd.BrojTelefona,zd.DatumZaposlenja
FROM ZaposleniPodaci zp, ZaposleniDetalji zd
WHERE zp.IDZaposlenog=zp.IDZaposlenog



GO
/****** Object:  Table [dbo].[Dobavljac]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dobavljac](
	[IDDobavljaca] [int] IDENTITY(1,1) NOT NULL,
	[Naziv] [varchar](50) NOT NULL,
	[BrojTelefona] [varchar](50) NOT NULL,
	[PIB] [dbo].[PIB] NOT NULL,
 CONSTRAINT [PK_Dobavljac] PRIMARY KEY CLUSTERED 
(
	[IDDobavljaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Knjizi]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Knjizi](
	[BrRacuna] [int] NOT NULL,
	[IDZaposlenog] [int] NOT NULL,
	[DatumKnjizenja] [date] NOT NULL,
 CONSTRAINT [PK_Knjizi] PRIMARY KEY CLUSTERED 
(
	[BrRacuna] ASC,
	[IDZaposlenog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NacinIsporuke]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NacinIsporuke](
	[IDNacinaIsporuke] [int] IDENTITY(1,1) NOT NULL,
	[NazivNacinaIsporuke] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NacinIsporuke] PRIMARY KEY CLUSTERED 
(
	[IDNacinaIsporuke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NalogZaKnjizenje]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NalogZaKnjizenje](
	[BrRacuna] [int] NOT NULL,
	[IDZaposlenog] [int] NOT NULL,
	[BrNaloga] [int] NOT NULL,
	[Napomena] [varchar](50) NULL,
	[Potrazivanje] [float] NOT NULL,
	[Dugovanje] [float] NOT NULL,
	[DatumIzdavanja] [date] NOT NULL,
 CONSTRAINT [PK_NalogZaKnjizenje] PRIMARY KEY CLUSTERED 
(
	[BrRacuna] ASC,
	[IDZaposlenog] ASC,
	[BrNaloga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Narudzbenica]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Narudzbenica](
	[IDNarudzbenice] [int] IDENTITY(1,1) NOT NULL,
	[DatumIzdavanja] [date] NOT NULL,
	[MestoIzdavanja] [varchar](50) NOT NULL,
	[IDZaposlenog] [int] NOT NULL,
	[IDDobavljaca] [int] NOT NULL,
	[IDOdlukeONabavci] [int] NOT NULL,
 CONSTRAINT [PK_Narudzbenica] PRIMARY KEY CLUSTERED 
(
	[IDNarudzbenice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdlukaONabavci]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdlukaONabavci](
	[IDOdlukeONabavci] [int] IDENTITY(1,1) NOT NULL,
	[DatumDonosenja] [date] NOT NULL,
	[IDZaposlenog] [int] NOT NULL,
 CONSTRAINT [PK_OdlukaONabavci] PRIMARY KEY CLUSTERED 
(
	[IDOdlukeONabavci] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OsnovnoSredstvo]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OsnovnoSredstvo](
	[IDOsnovnogSredstva] [int] IDENTITY(1,1) NOT NULL,
	[NazivOsnovnogSredstva] [varchar](50) NOT NULL,
	[NazivTipaOS] [varchar](50) NULL,
	[JedinicaMere] [varchar](50) NOT NULL,
	[IDTipaOS] [int] NOT NULL,
 CONSTRAINT [PK_OsnovnoSredstva] PRIMARY KEY CLUSTERED 
(
	[IDOsnovnogSredstva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otpremnica]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otpremnica](
	[BrOtpremnice] [int] NOT NULL,
	[DatumIzdavanja] [date] NOT NULL,
	[IDNarudzbenice] [int] NOT NULL,
	[IDZaposlenog] [int] NOT NULL,
	[IDDobavljaca] [int] NOT NULL,
	[IDNacinaIsporuke] [int] NOT NULL,
 CONSTRAINT [PK_Otpremnica] PRIMARY KEY CLUSTERED 
(
	[BrOtpremnice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Racun]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Racun](
	[BrRacuna] [int] NOT NULL,
	[Placanje] [dbo].[Placanje] NOT NULL,
	[DatumIzdavanja] [date] NOT NULL,
	[Napomena] [varchar](50) NULL,
	[IDNarudzbenice] [int] NOT NULL,
	[IDZaposlenog] [int] NOT NULL,
	[IDDobavljaca] [int] NOT NULL,
 CONSTRAINT [PK_Racun] PRIMARY KEY CLUSTERED 
(
	[BrRacuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RadnoMesto]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RadnoMesto](
	[IDRadnogMesta] [int] IDENTITY(1,1) NOT NULL,
	[NazivRadnogMesta] [varchar](50) NOT NULL,
 CONSTRAINT [PK_RadnoMesto] PRIMARY KEY CLUSTERED 
(
	[IDRadnogMesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StavkaNarudzbenice]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StavkaNarudzbenice](
	[IDNarudzbenice] [int] NOT NULL,
	[RbStavke] [int] IDENTITY(1,1) NOT NULL,
	[Kolicina] [int] NOT NULL,
	[Cena] [float] NOT NULL,
	[IDOsnovnogSredstva] [int] NOT NULL,
 CONSTRAINT [PK_StavkaNarudzbenice] PRIMARY KEY CLUSTERED 
(
	[IDNarudzbenice] ASC,
	[RbStavke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StavkaOtpremnice]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StavkaOtpremnice](
	[BrOtpremnice] [int] NOT NULL,
	[RbStavke] [int] IDENTITY(1,1) NOT NULL,
	[Kolicina] [int] NOT NULL,
	[DatumIzdavanja] [date] NOT NULL,
	[IDOsnovnogSredstva] [int] NOT NULL,
 CONSTRAINT [PK_StavkaOtpremnice] PRIMARY KEY CLUSTERED 
(
	[BrOtpremnice] ASC,
	[RbStavke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StavkaRacuna]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StavkaRacuna](
	[BrRacuna] [int] NOT NULL,
	[RbStavke] [int] IDENTITY(1,1) NOT NULL,
	[Kolicina] [int] NOT NULL,
	[Cena] [float] NOT NULL,
	[IDOsnovnogSredstva] [int] NOT NULL,
 CONSTRAINT [PK_StavkaRacuna] PRIMARY KEY CLUSTERED 
(
	[BrRacuna] ASC,
	[RbStavke] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipOsnovnogSredstva]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipOsnovnogSredstva](
	[IDTipaOS] [int] IDENTITY(1,1) NOT NULL,
	[NazivTipaOS] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipOsnovnogSredstva] PRIMARY KEY CLUSTERED 
(
	[IDTipaOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZapisnikOAktiviranjuOS]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZapisnikOAktiviranjuOS](
	[IDZapisnika] [int] IDENTITY(1,1) NOT NULL,
	[DatumIzdavanja] [date] NOT NULL,
	[BrRacuna] [int] NOT NULL,
	[IDZaposlenog] [int] NOT NULL,
	[IDOsnovnogSredstva] [int] NOT NULL,
 CONSTRAINT [PK_ZapisnikOAktiviranjuOS] PRIMARY KEY CLUSTERED 
(
	[IDZapisnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [RacunIndex]    Script Date: 29.12.2022. 13:59:49 ******/
CREATE NONCLUSTERED INDEX [RacunIndex] ON [dbo].[Racun]
(
	[DatumIzdavanja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RadnoMestoIndex]    Script Date: 29.12.2022. 13:59:49 ******/
CREATE NONCLUSTERED INDEX [RadnoMestoIndex] ON [dbo].[RadnoMesto]
(
	[IDRadnogMesta] ASC,
	[NazivRadnogMesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Knjizi]  WITH CHECK ADD  CONSTRAINT [FK_Knjizi_Racun] FOREIGN KEY([BrRacuna])
REFERENCES [dbo].[Racun] ([BrRacuna])
GO
ALTER TABLE [dbo].[Knjizi] CHECK CONSTRAINT [FK_Knjizi_Racun]
GO
ALTER TABLE [dbo].[Knjizi]  WITH CHECK ADD  CONSTRAINT [FK_Knjizi_ZaposleniPodaci] FOREIGN KEY([IDZaposlenog])
REFERENCES [dbo].[ZaposleniPodaci] ([IDZaposlenog])
GO
ALTER TABLE [dbo].[Knjizi] CHECK CONSTRAINT [FK_Knjizi_ZaposleniPodaci]
GO
ALTER TABLE [dbo].[NalogZaKnjizenje]  WITH CHECK ADD  CONSTRAINT [FK_NalogZaKnjizenje_Racun] FOREIGN KEY([BrRacuna])
REFERENCES [dbo].[Racun] ([BrRacuna])
GO
ALTER TABLE [dbo].[NalogZaKnjizenje] CHECK CONSTRAINT [FK_NalogZaKnjizenje_Racun]
GO
ALTER TABLE [dbo].[NalogZaKnjizenje]  WITH CHECK ADD  CONSTRAINT [FK_NalogZaKnjizenje_ZaposleniPodaci] FOREIGN KEY([IDZaposlenog])
REFERENCES [dbo].[ZaposleniPodaci] ([IDZaposlenog])
GO
ALTER TABLE [dbo].[NalogZaKnjizenje] CHECK CONSTRAINT [FK_NalogZaKnjizenje_ZaposleniPodaci]
GO
ALTER TABLE [dbo].[Narudzbenica]  WITH CHECK ADD  CONSTRAINT [FK_Narudzbenica_Dobavljac] FOREIGN KEY([IDDobavljaca])
REFERENCES [dbo].[Dobavljac] ([IDDobavljaca])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Narudzbenica] CHECK CONSTRAINT [FK_Narudzbenica_Dobavljac]
GO
ALTER TABLE [dbo].[Narudzbenica]  WITH CHECK ADD  CONSTRAINT [FK_Narudzbenica_OdlukaONabavci] FOREIGN KEY([IDOdlukeONabavci])
REFERENCES [dbo].[OdlukaONabavci] ([IDOdlukeONabavci])
GO
ALTER TABLE [dbo].[Narudzbenica] CHECK CONSTRAINT [FK_Narudzbenica_OdlukaONabavci]
GO
ALTER TABLE [dbo].[Narudzbenica]  WITH CHECK ADD  CONSTRAINT [FK_Narudzbenica_ZaposleniPodaci] FOREIGN KEY([IDZaposlenog])
REFERENCES [dbo].[ZaposleniPodaci] ([IDZaposlenog])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Narudzbenica] CHECK CONSTRAINT [FK_Narudzbenica_ZaposleniPodaci]
GO
ALTER TABLE [dbo].[OdlukaONabavci]  WITH CHECK ADD  CONSTRAINT [FK_OdlukaONabavci_ZaposleniPodaci] FOREIGN KEY([IDZaposlenog])
REFERENCES [dbo].[ZaposleniPodaci] ([IDZaposlenog])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[OdlukaONabavci] CHECK CONSTRAINT [FK_OdlukaONabavci_ZaposleniPodaci]
GO
ALTER TABLE [dbo].[OsnovnoSredstvo]  WITH CHECK ADD  CONSTRAINT [FK_OsnovnoSredstvo_TipOsnovnogSredstva] FOREIGN KEY([IDTipaOS])
REFERENCES [dbo].[TipOsnovnogSredstva] ([IDTipaOS])
GO
ALTER TABLE [dbo].[OsnovnoSredstvo] CHECK CONSTRAINT [FK_OsnovnoSredstvo_TipOsnovnogSredstva]
GO
ALTER TABLE [dbo].[Otpremnica]  WITH CHECK ADD  CONSTRAINT [FK_Otpremnica_Dobavljac] FOREIGN KEY([IDDobavljaca])
REFERENCES [dbo].[Dobavljac] ([IDDobavljaca])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Otpremnica] CHECK CONSTRAINT [FK_Otpremnica_Dobavljac]
GO
ALTER TABLE [dbo].[Otpremnica]  WITH CHECK ADD  CONSTRAINT [FK_Otpremnica_NacinIsporuke] FOREIGN KEY([IDNacinaIsporuke])
REFERENCES [dbo].[NacinIsporuke] ([IDNacinaIsporuke])
GO
ALTER TABLE [dbo].[Otpremnica] CHECK CONSTRAINT [FK_Otpremnica_NacinIsporuke]
GO
ALTER TABLE [dbo].[Otpremnica]  WITH CHECK ADD  CONSTRAINT [FK_Otpremnica_Narudzbenica] FOREIGN KEY([IDNarudzbenice])
REFERENCES [dbo].[Narudzbenica] ([IDNarudzbenice])
GO
ALTER TABLE [dbo].[Otpremnica] CHECK CONSTRAINT [FK_Otpremnica_Narudzbenica]
GO
ALTER TABLE [dbo].[Otpremnica]  WITH CHECK ADD  CONSTRAINT [FK_Otpremnica_ZaposleniPodaci] FOREIGN KEY([IDZaposlenog])
REFERENCES [dbo].[ZaposleniPodaci] ([IDZaposlenog])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Otpremnica] CHECK CONSTRAINT [FK_Otpremnica_ZaposleniPodaci]
GO
ALTER TABLE [dbo].[Racun]  WITH CHECK ADD  CONSTRAINT [FK_Racun_Dobavljac] FOREIGN KEY([IDDobavljaca])
REFERENCES [dbo].[Dobavljac] ([IDDobavljaca])
GO
ALTER TABLE [dbo].[Racun] CHECK CONSTRAINT [FK_Racun_Dobavljac]
GO
ALTER TABLE [dbo].[Racun]  WITH CHECK ADD  CONSTRAINT [FK_Racun_Narudzbenica] FOREIGN KEY([IDNarudzbenice])
REFERENCES [dbo].[Narudzbenica] ([IDNarudzbenice])
GO
ALTER TABLE [dbo].[Racun] CHECK CONSTRAINT [FK_Racun_Narudzbenica]
GO
ALTER TABLE [dbo].[Racun]  WITH CHECK ADD  CONSTRAINT [FK_Racun_ZaposleniPodaci] FOREIGN KEY([IDZaposlenog])
REFERENCES [dbo].[ZaposleniPodaci] ([IDZaposlenog])
GO
ALTER TABLE [dbo].[Racun] CHECK CONSTRAINT [FK_Racun_ZaposleniPodaci]
GO
ALTER TABLE [dbo].[StavkaNarudzbenice]  WITH CHECK ADD  CONSTRAINT [FK_StavkaNarudzbenice_Narudzbenica] FOREIGN KEY([IDNarudzbenice])
REFERENCES [dbo].[Narudzbenica] ([IDNarudzbenice])
GO
ALTER TABLE [dbo].[StavkaNarudzbenice] CHECK CONSTRAINT [FK_StavkaNarudzbenice_Narudzbenica]
GO
ALTER TABLE [dbo].[StavkaNarudzbenice]  WITH CHECK ADD  CONSTRAINT [FK_StavkaNarudzbenice_OsnovnoSredstvo] FOREIGN KEY([IDOsnovnogSredstva])
REFERENCES [dbo].[OsnovnoSredstvo] ([IDOsnovnogSredstva])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[StavkaNarudzbenice] CHECK CONSTRAINT [FK_StavkaNarudzbenice_OsnovnoSredstvo]
GO
ALTER TABLE [dbo].[StavkaOtpremnice]  WITH CHECK ADD  CONSTRAINT [FK_StavkaOtpremnice_OsnovnoSredstvo] FOREIGN KEY([IDOsnovnogSredstva])
REFERENCES [dbo].[OsnovnoSredstvo] ([IDOsnovnogSredstva])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StavkaOtpremnice] CHECK CONSTRAINT [FK_StavkaOtpremnice_OsnovnoSredstvo]
GO
ALTER TABLE [dbo].[StavkaOtpremnice]  WITH CHECK ADD  CONSTRAINT [FK_StavkaOtpremnice_Otpremnica] FOREIGN KEY([BrOtpremnice])
REFERENCES [dbo].[Otpremnica] ([BrOtpremnice])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StavkaOtpremnice] CHECK CONSTRAINT [FK_StavkaOtpremnice_Otpremnica]
GO
ALTER TABLE [dbo].[StavkaRacuna]  WITH CHECK ADD  CONSTRAINT [FK_StavkaRacuna_OsnovnoSredstvo] FOREIGN KEY([IDOsnovnogSredstva])
REFERENCES [dbo].[OsnovnoSredstvo] ([IDOsnovnogSredstva])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StavkaRacuna] CHECK CONSTRAINT [FK_StavkaRacuna_OsnovnoSredstvo]
GO
ALTER TABLE [dbo].[StavkaRacuna]  WITH CHECK ADD  CONSTRAINT [FK_StavkaRacuna_Racun] FOREIGN KEY([BrRacuna])
REFERENCES [dbo].[Racun] ([BrRacuna])
GO
ALTER TABLE [dbo].[StavkaRacuna] CHECK CONSTRAINT [FK_StavkaRacuna_Racun]
GO
ALTER TABLE [dbo].[ZapisnikOAktiviranjuOS]  WITH CHECK ADD  CONSTRAINT [FK_ZapisnikOAktiviranjuOS_OsnovnoSredstvo] FOREIGN KEY([IDOsnovnogSredstva])
REFERENCES [dbo].[OsnovnoSredstvo] ([IDOsnovnogSredstva])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ZapisnikOAktiviranjuOS] CHECK CONSTRAINT [FK_ZapisnikOAktiviranjuOS_OsnovnoSredstvo]
GO
ALTER TABLE [dbo].[ZapisnikOAktiviranjuOS]  WITH CHECK ADD  CONSTRAINT [FK_ZapisnikOAktiviranjuOS_ZaposleniPodaci] FOREIGN KEY([IDZaposlenog])
REFERENCES [dbo].[ZaposleniPodaci] ([IDZaposlenog])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ZapisnikOAktiviranjuOS] CHECK CONSTRAINT [FK_ZapisnikOAktiviranjuOS_ZaposleniPodaci]
GO
ALTER TABLE [dbo].[ZaposleniPodaci]  WITH CHECK ADD  CONSTRAINT [FK_ZaposleniPodaci_RadnoMesto] FOREIGN KEY([IDRadnogMesta])
REFERENCES [dbo].[RadnoMesto] ([IDRadnogMesta])
GO
ALTER TABLE [dbo].[ZaposleniPodaci] CHECK CONSTRAINT [FK_ZaposleniPodaci_RadnoMesto]
GO
ALTER TABLE [dbo].[OsnovnoSredstvo]  WITH CHECK ADD  CONSTRAINT [CHECK_JM] CHECK  (([JedinicaMere]='komad' OR [JedinicaMere]='l' OR [JedinicaMere]='g' OR [JedinicaMere]='kg'))
GO
ALTER TABLE [dbo].[OsnovnoSredstvo] CHECK CONSTRAINT [CHECK_JM]
GO
/****** Object:  StoredProcedure [dbo].[SP_IzracunajIznos]    Script Date: 29.12.2022. 13:59:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_IzracunajIznos]
(@BrRacuna INT,
@NoviIznos INT,
@StariIznos INT = 0,
@Akcija INT)
AS
BEGIN
SET NOCOUNT ON
UPDATE Racun
SET Placanje.Iznos = 
	CASE 
		WHEN @Akcija=1 THEN Placanje.Iznos+@NoviIznos
		WHEN @Akcija=2 THEN  Placanje.Iznos-@NoviIznos
		WHEN @Akcija=3 THEN  Placanje.Iznos-@StariIznos+@NoviIznos
		ELSE Placanje.Iznos
	END
WHERE BrRacuna=@BrRacuna
END
GO
USE [master]
GO
ALTER DATABASE [Baze3] SET  READ_WRITE 
GO
