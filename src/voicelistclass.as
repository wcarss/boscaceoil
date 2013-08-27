package {
	import flash.display.*;
	import flash.geom.*;
	import flash.events.*;
	import flash.net.*;
	
	public class voicelistclass	{
		public function voicelistclass():void {
			listsize = 0; sublistsize = 0; pagenum = 0;
			for (var i:int = 0; i < 256; i++) {
				subname.push("");
				subvoice.push("");
				subpalette.push("");
			}
			init();
		}
		
		public function init():void {
			create("MIDI", "Grand Piano", "midi.piano1", 0);
			create("MIDI", "Brite Piano", "midi.piano2", 1);
			create("MIDI", "E. Grand Piano", "midi.piano3", 2);
			create("MIDI", "HonkyTonk", "midi.piano4", 3);
			create("MIDI", "E.Piano1", "midi.piano5", 4);
			create("MIDI", "E.Piano2", "midi.piano6", 5);
			create("MIDI", "Harpsichord", "midi.piano7", 0);
			create("MIDI", "Clavi", "midi.piano8", 1);
			create("MIDI", "Celesta", "midi.chrom1", 2);
			create("MIDI", "Glocken", "midi.chrom2", 3);
			create("MIDI", "MusicBox", "midi.chrom3", 4);
			create("MIDI", "Vibes", "midi.chrom4", 5);
			create("MIDI", "Marimba", "midi.chrom5", 0);
			create("MIDI", "Xylophone", "midi.chrom6", 1);
			create("MIDI", "Tubular Bells", "midi.chrom7", 2);
			create("MIDI", "Dulcimer", "midi.chrom8", 3);
			create("MIDI", "DrawOrgn", "midi.organ1", 4);
			create("MIDI", "PercOrgn", "midi.organ2", 5);
			create("MIDI", "RockOrgn", "midi.organ3", 0);
			create("MIDI", "ChrchOrg", "midi.organ4", 1);
			create("MIDI", "ReedOrgn", "midi.organ5", 2);
			create("MIDI", "Acordion", "midi.organ6", 3);
			create("MIDI", "Harmnica", "midi.organ7", 4);
			create("MIDI", "TangoAcd", "midi.organ8", 5);
			create("MIDI", "NylonGtr", "midi.guitar1", 0);
			create("MIDI", "SteelGtr", "midi.guitar2", 1);
			create("MIDI", "Jazz Gtr", "midi.guitar3", 2);
			create("MIDI", "CleanGtr", "midi.guitar4", 3);
			create("MIDI", "Mute.Gtr", "midi.guitar5", 4);
			create("MIDI", "Ovrdrive", "midi.guitar6", 5);
			create("MIDI", "Dist.Gtr", "midi.guitar7", 0);
			create("MIDI", "GtrHarmo", "midi.guitar8", 1);
			create("MIDI", "Aco.Bass", "midi.bass1", 2);
			create("MIDI", "FngrBass", "midi.bass2", 3);
			create("MIDI", "PickBass", "midi.bass3", 4);
			create("MIDI", "Fretless", "midi.bass4", 5);
			create("MIDI", "SlapBas1", "midi.bass5", 0);
			create("MIDI", "SlapBas2", "midi.bass6", 1);
			create("MIDI", "SynBass1", "midi.bass7", 2);
			create("MIDI", "SynBass2", "midi.bass8", 3);
			create("MIDI", "Violin", "midi.strings1", 4);
			create("MIDI", "Viola", "midi.strings2", 5);
			create("MIDI", "Cello", "midi.strings3", 0);
			create("MIDI", "ContraBs", "midi.strings4", 1);
			create("MIDI", "Trem.Str", "midi.strings5", 2);
			create("MIDI", "Pizz.Str", "midi.strings6", 3);
			create("MIDI", "Harp", "midi.strings7", 4);
			create("MIDI", "Timpani", "midi.strings8", 5);
			create("MIDI", "Strings1", "midi.ensemble1", 0);
			create("MIDI", "Strings2", "midi.ensemble2", 1);
			create("MIDI", "Syn.Str1", "midi.ensemble3", 2);
			create("MIDI", "Syn.Str2", "midi.ensemble4", 3);
			create("MIDI", "ChoirAah", "midi.ensemble5", 4);
			create("MIDI", "VoiceOoh", "midi.ensemble6", 5);
			create("MIDI", "SynVoice", "midi.ensemble7", 0);
			create("MIDI", "Orch.Hit", "midi.ensemble8", 1);
			create("MIDI", "Trumpet", "midi.brass1", 2);
			create("MIDI", "Trombone", "midi.brass2", 3);
			create("MIDI", "Tuba", "midi.brass3", 4);
			create("MIDI", "Mute.Trp", "midi.brass4", 5);
			create("MIDI", "Fr.Horn", "midi.brass5", 0);
			create("MIDI", "BrasSect", "midi.brass6", 1);
			create("MIDI", "SynBras1", "midi.brass7", 2);
			create("MIDI", "SynBras2", "midi.brass8", 3);
			create("MIDI", "SprnoSax", "midi.reed1", 4);
			create("MIDI", "Alto Sax", "midi.reed2", 5);
			create("MIDI", "TenorSax", "midi.reed3", 0);
			create("MIDI", "Bari.Sax", "midi.reed4", 1);
			create("MIDI", "Oboe", "midi.reed5", 2);
			create("MIDI", "Eng.Horn", "midi.reed6", 3);
			create("MIDI", "Bassoon", "midi.reed7", 4);
			create("MIDI", "Clarinet", "midi.reed8", 5);
			create("MIDI", "Piccolo", "midi.pipe1", 0);
			create("MIDI", "Flute", "midi.pipe2", 1);
			create("MIDI", "Recorder", "midi.pipe3", 2);
			create("MIDI", "PanFlute", "midi.pipe4", 3);
			create("MIDI", "Bottle", "midi.pipe5", 4);
			create("MIDI", "Shakhchi", "midi.pipe6", 5);
			create("MIDI", "Whistle", "midi.pipe7", 0);
			create("MIDI", "Ocarina", "midi.pipe8", 1);
			create("MIDI", "SquareLd", "midi.lead1", 2);
			create("MIDI", "Saw.Lead", "midi.lead2", 3);
			create("MIDI", "CaliopLd", "midi.lead3", 4);
			create("MIDI", "ChiffLd", "midi.lead4", 5);
			create("MIDI", "CharanLd", "midi.lead5", 0);
			create("MIDI", "Voice Ld", "midi.lead6", 1);
			create("MIDI", "Fifth Ld", "midi.lead7", 2);
			create("MIDI", "Bass &Ld", "midi.lead8", 3);
			create("MIDI", "NewAgePd", "midi.pad1", 4);
			create("MIDI", "Warm Pad", "midi.pad2", 5);
			create("MIDI", "PolySyPd", "midi.pad3", 0);
			create("MIDI", "ChoirPad", "midi.pad4", 1);
			create("MIDI", "BowedPad", "midi.pad5", 2);
			create("MIDI", "MetalPad", "midi.pad6", 3);
			create("MIDI", "Halo Pad", "midi.pad7", 4);
			create("MIDI", "SweepPad", "midi.pad8", 5);
			create("MIDI", "Rain", "midi.fx1", 0);
			create("MIDI", "SoundTrk", "midi.fx2", 1);
			create("MIDI", "Crystal", "midi.fx3", 2);
			create("MIDI", "Atmosphr", "midi.fx4", 3);
			create("MIDI", "Bright", "midi.fx5", 4);
			create("MIDI", "Goblins", "midi.fx6", 5);
			create("MIDI", "Echoes", "midi.fx7", 0);
			create("MIDI", "Sci-Fi", "midi.fx8", 1);
			create("MIDI", "Sitar", "midi.world1", 2);
			create("MIDI", "Banjo", "midi.world2", 3);
			create("MIDI", "Shamisen", "midi.world3", 4);
			create("MIDI", "Koto", "midi.world4", 5);
			create("MIDI", "Kalimba", "midi.world5", 0);
			create("MIDI", "Bagpipe", "midi.world6", 1);
			create("MIDI", "Fiddle", "midi.world7", 2);
			create("MIDI", "Shanai", "midi.world8", 3);
			create("MIDI", "TnklBell", "midi.percus1", 4);
			create("MIDI", "Agogo", "midi.percus2", 5);
			create("MIDI", "SteelDrm", "midi.percus3", 0);
			create("MIDI", "WoodBlok", "midi.percus4", 1);
			create("MIDI", "TaikoDrm", "midi.percus5", 2);
			create("MIDI", "MelodTom", "midi.percus6", 3);
			create("MIDI", "Syn.Drum", "midi.percus7", 4);
			create("MIDI", "RevCymbl", "midi.percus8", 5);
			create("MIDI", "FretNoiz", "midi.se1", 0);
			create("MIDI", "BrthNoiz", "midi.se2", 1);
			create("MIDI", "Seashore", "midi.se3", 2);
			create("MIDI", "Tweet", "midi.se4", 3);
			create("MIDI", "Telphone", "midi.se5", 4);
			create("MIDI", "Helicptr", "midi.se6", 5);
			create("MIDI", "Applause", "midi.se7", 0);
			create("MIDI", "Gunshot", "midi.se8", 1);
			
			create("CHIPTUNE", "Square Wave", "square", 0);
			create("CHIPTUNE", "Saw Wave", "saw", 1);
			create("CHIPTUNE", "Triangle Wave", "triangle", 2);
			create("CHIPTUNE", "Sine Wave", "sine", 3);
			create("CHIPTUNE", "Noise", "noise", 20);
			create("CHIPTUNE", "Dual Square", "dualsquare", 0);
			create("CHIPTUNE", "Dual Saw", "dualsaw", 1);
			create("CHIPTUNE", "Triangle LO-FI", "triangle8", 2);
			create("CHIPTUNE", "Konami Wave", "konami", 4);
			create("CHIPTUNE", "Ramp Wave", "ramp", 4);
			create("CHIPTUNE", "Pulse Wave", "beep", 4);
			create("CHIPTUNE", "MA3 Wave", "ma1", 4);
			create("CHIPTUNE", "Noise (Bass)", "bassdrumm", 20);
			create("CHIPTUNE", "Noise (Snare)", "snare", 20);
			create("CHIPTUNE", "Noise (Hi-Hat)", "closedhh", 20);
			
			create("BASS", "Analog Bass", "valsound.bass1", 2 % 6);
			create("BASS", "Analog Bass #2", "valsound.bass2", 2 % 6);
			create("BASS", "Analog Bass #2 (q2)", "valsound.bass3", 2 % 6);
			create("BASS", "Chopper Bass 0", "valsound.bass4", 2 % 6);
			create("BASS", "Chopper Bass 1", "valsound.bass5", 2 % 6);
			create("BASS", "Chopper bass 2 (CUT)", "valsound.bass6", 2 % 6);
			create("BASS", "Chopper bass 3", "valsound.bass7", 2 % 6);
			create("BASS", "Elec.Chopper Bass", "valsound.bass8", 2 % 6);
			create("BASS", "Effect Bass 1", "valsound.bass9", 2 % 6);
			create("BASS", "Effect Bass 2 to UP", "valsound.bass10", 2 % 6);
			create("BASS", "Effect Bass 1", "valsound.bass11", 2 % 6);
			create("BASS", "Mohaaa", "valsound.bass12", 2 % 6);
			create("BASS", "Effect FB Bass #5", "valsound.bass13", 2 % 6);
			create("BASS", "Magical bass", "valsound.bass14", 2 % 6);
			create("BASS", "E.Bass #6", "valsound.bass15", 2 % 6);
			create("BASS", "E.Bass #7", "valsound.bass16", 2 % 6);
			create("BASS", "E.Bass 70", "valsound.bass17", 2 % 6);
			create("BASS", "VAL006 Euro", "valsound.bass18", 2 % 6);
			create("BASS", "E.Bass x2", "valsound.bass19", 2 % 6);
			create("BASS", "E.Bass x4", "valsound.bass20", 2 % 6);
			create("BASS", "Metal pick bass X5", "valsound.bass21", 2 % 6);
			create("BASS", "Groove Bass #1", "valsound.bass22", 2 % 6);
			create("BASS", "Analog Groove #2", "valsound.bass23", 2 % 6);
			create("BASS", "Harmonics #1", "valsound.bass24", 2 % 6);
			create("BASS", "Low Bass x1", "valsound.bass25", 2 % 6);
			create("BASS", "Low_bass x2", "valsound.bass26", 2 % 6);
			create("BASS", "Low Bass Rezzo", "valsound.bass27", 2 % 6);
			create("BASS", "Low Bass Picked", "valsound.bass28", 2 % 6);
			create("BASS", "Metal Bass", "valsound.bass29", 2 % 6);
			create("BASS", "e.n.bass 1", "valsound.bass30", 2 % 6);
			create("BASS", "psg bass 1", "valsound.bass31", 2 % 6);
			create("BASS", "psg bass 2", "valsound.bass32", 2 % 6);
			create("BASS", "rezonance bass", "valsound.bass33", 2 % 6);
			create("BASS", "slap bass", "valsound.bass34", 2 % 6);
			create("BASS", "slap bass 1", "valsound.bass35", 2 % 6);
			create("BASS", "slap bass 2 (1+)", "valsound.bass36", 2 % 6);
			create("BASS", "slap bass #3", "valsound.bass37", 2 % 6);
			create("BASS", "slap bass pull", "valsound.bass38", 2 % 6);
			create("BASS", "slap bass mute", "valsound.bass39", 2 % 6);
			create("BASS", "slap bass pick", "valsound.bass40", 2 % 6);
			create("BASS", "super bass #2", "valsound.bass41", 2 % 6);
			create("BASS", "sp_bass#3 soft", "valsound.bass42", 2 % 6);
			create("BASS", "sp_bass#4 soft*2", "valsound.bass43", 2 % 6);
			create("BASS", "sp_bass#5 attack", "valsound.bass44", 2 % 6);
			create("BASS", "sp.bass#6 rezz", "valsound.bass45", 2 % 6);
			create("BASS", "synth bass 1", "valsound.bass46", 2 % 6);
			create("BASS", "synth bass 2 myon", "valsound.bass47", 2 % 6);
			create("BASS", "synth bass #3 cho!", "valsound.bass48", 2 % 6);
			create("BASS", "synth-wind-bass #4", "valsound.bass49", 2 % 6);
			create("BASS", "synth bass #5 q2", "valsound.bass50", 2 % 6);
			create("BASS", "old wood bass", "valsound.bass51", 2 % 6);
			create("BASS", "w.bass bright", "valsound.bass52", 2 % 6);
			create("BASS", "w.bass x2 bow", "valsound.bass53", 2 % 6);
			create("BASS", "Wood Bass 3", "valsound.bass54", 2 % 6);
			
			create("BRASS", "Brass strings", "valsound.brass1", 0);
			create("BRASS", "E.mute Trampet", "valsound.brass2", 1);
			create("BRASS", "HORN 2", "valsound.brass3", 2);
			create("BRASS", "Alpine Horn #3", "valsound.brass4", 3);
			create("BRASS", "Lead brass", "valsound.brass5", 4);
			create("BRASS", "Normal HORN", "valsound.brass6", 5);
			create("BRASS", "Synth Oboe", "valsound.brass7", 0);
			create("BRASS", "Oboe 2", "valsound.brass8", 1);
			create("BRASS", "Attack Brass (q2)", "valsound.brass9", 2);
			create("BRASS", "SAX", "valsound.brass10", 3);
			create("BRASS", "Soft brass(lead)", "valsound.brass11", 4);
			create("BRASS", "Synth Brass 1 OLD", "valsound.brass12", 5);
			create("BRASS", "Synth Brass 2 OLD", "valsound.brass13", 0);
			create("BRASS", "Synth Brass 3", "valsound.brass14", 1);
			create("BRASS", "Synth Brass #4", "valsound.brass15", 2);
			create("BRASS", "Syn.Brass 5(long)", "valsound.brass16", 3);
			create("BRASS", "Synth Brass 6", "valsound.brass17", 4);
			create("BRASS", "Trumpet", "valsound.brass18", 5);
			create("BRASS", "Trumpet 2", "valsound.brass19", 0);
			create("BRASS", "Twin Horn (or OL=25)", "valsound.brass20", 1);
			
			create("BELL", "Calm Bell", "valsound.bell1", 1%6);
			create("BELL", "China Bell Double", "valsound.bell2", 2%6);
			create("BELL", "Church Bell", "valsound.bell3", 3%6);
			create("BELL", "Church Bell 2", "valsound.bell4", 4%6);
			create("BELL", "Glocken 1", "valsound.bell5", 5%6);
			create("BELL", "Harp #1", "valsound.bell6", 0%6);
			create("BELL", "Harp #2", "valsound.bell7", 1%6);
			create("BELL", "Kirakira", "valsound.bell8", 2%6);
			create("BELL", "Marimba", "valsound.bell9", 3%6);
			create("BELL", "Old Bell", "valsound.bell10", 4%6);
			create("BELL", "Percus. Bell", "valsound.bell11", 5%6);
			create("BELL", "Pretty Bell", "valsound.bell12", 0%6);
			create("BELL", "Synth Bell #0", "valsound.bell13", 1%6);
			create("BELL", "Synth Bell #1 o5", "valsound.bell14", 2%6);
			create("BELL", "Synth Bell 2", "valsound.bell15", 3%6);
			create("BELL", "Viberaphone", "valsound.bell16", 4%6);
			create("BELL", "Twin Marinba", "valsound.bell17", 5%6);
			create("BELL", "Bellend", "valsound.bell18", 0 % 6);
			
			create("GUITAR", "Guitar VeloLow", "valsound.guitar1", 0);
			create("GUITAR", "Guitar VeloHigh", "valsound.guitar2", 1);
			create("GUITAR", "A.Guitar #3", "valsound.guitar3", 2);
			create("GUITAR", "Cutting E.Guitar", "valsound.guitar4", 3);
			create("GUITAR", "Dis. Synth (old)", "valsound.guitar5", 4);
			create("GUITAR", "Dra-spi-Dis.G.", "valsound.guitar6", 5);
			create("GUITAR", "Dis.Guitar 3-", "valsound.guitar7", 0);
			create("GUITAR", "Dis.Guitar 3+", "valsound.guitar8", 1);
			create("GUITAR", "Feed-back Guitar 1", "valsound.guitar9", 2);
			create("GUITAR", "Hard Dis. Guitar 1", "valsound.guitar10", 3);
			create("GUITAR", "Hard Dis.Guitar 3", "valsound.guitar11", 4);
			create("GUITAR", "Dis.Guitar '94 Hard", "valsound.guitar12", 5);
			create("GUITAR", "New Dis.Guitar 1", "valsound.guitar13", 0);
			create("GUITAR", "New Dis.Guitar 2", "valsound.guitar14", 1);
			create("GUITAR", "New Dis.Guitar 3", "valsound.guitar15", 2);
			create("GUITAR", "Overdrive.G. (AL=013)", "valsound.guitar16", 3);
			create("GUITAR", "METAL", "valsound.guitar17", 4);
			create("GUITAR", "Soft Dis.Guitar", "valsound.guitar18", 5);
			
			create("LEAD", "Aco code", "valsound.lead1", 0);
			create("LEAD", "Analog synthe 1", "valsound.lead2", 1);
			create("LEAD", "Bosco-lead", "valsound.lead3", 2);
			create("LEAD", "Cosmo Lead", "valsound.lead4", 3);
			create("LEAD", "Cosmo Lead 2", "valsound.lead5", 4);
			create("LEAD", "Digital lead #1", "valsound.lead6", 5);
			create("LEAD", "Double sin wave", "valsound.lead7", 0);
			create("LEAD", "E.Organ 2 bright", "valsound.lead8", 1);
			create("LEAD", "E.Organ 2 (voice)", "valsound.lead9", 2);
			create("LEAD", "E.Organ 4 Click", "valsound.lead10", 3);
			create("LEAD", "E.Organ 5 Click", "valsound.lead11", 4);
			create("LEAD", "E.Organ 6", "valsound.lead12", 5);
			create("LEAD", "E.Organ 7 Church", "valsound.lead13", 0);
			create("LEAD", "Metal Lead", "valsound.lead14", 1);
			create("LEAD", "Metal Lead 3", "valsound.lead15", 2);
			create("LEAD", "MONO Lead", "valsound.lead16", 3);
			create("LEAD", "PSG like PC88 (long)", "valsound.lead17", 4);
			create("LEAD", "PSG Cut 1", "valsound.lead18", 5);
			create("LEAD", "Attack Synth", "valsound.lead19", 0);
			create("LEAD", "Sin wave", "valsound.lead20", 1);
			create("LEAD", "Synth, Bell 2", "valsound.lead21", 2);
			create("LEAD", "Chorus #2(Voice)+bell", "valsound.lead22", 3);
			create("LEAD", "Synth Cut 8-4", "valsound.lead23", 4);
			create("LEAD", "Synth long 8-4", "valsound.lead24", 5);
			create("LEAD", "ACO_Code #2", "valsound.lead25", 0);
			create("LEAD", "ACO_Code #3", "valsound.lead26", 1);
			create("LEAD", "Synth FB long 4", "valsound.lead27", 2);
			create("LEAD", "Synth FB long 5", "valsound.lead28", 3);
			create("LEAD", "Synth Lead 0", "valsound.lead29", 4);
			create("LEAD", "Synth Lead 1", "valsound.lead30", 5);
			create("LEAD", "Synth Lead 2", "valsound.lead31", 0);
			create("LEAD", "Synth Lead 3", "valsound.lead32", 1);
			create("LEAD", "Synth Lead 4", "valsound.lead33", 2);
			create("LEAD", "Synth Lead 5", "valsound.lead34", 3);
			create("LEAD", "Synth Lead 6", "valsound.lead35", 4);
			create("LEAD", "Synth Lead 7 (Soft FB)", "valsound.lead36", 5);
			create("LEAD", "Synth PSG", "valsound.lead37", 0);
			create("LEAD", "Synth PSG 2", "valsound.lead38", 1);
			create("LEAD", "Synth PSG 3", "valsound.lead39", 2);
			create("LEAD", "Synth PSG 4", "valsound.lead40", 3);
			create("LEAD", "Synth PSG 5", "valsound.lead41", 4);
			create("LEAD", "Sin water synth", "valsound.lead42", 5);
			
			create("PIANO", "Aco Piano2 (Attack)", "valsound.piano1", 2);
			create("PIANO", "Backing 1 (Clav.)", "valsound.piano2", 3);
			create("PIANO", "Clav. coad", "valsound.piano3", 4);
			create("PIANO", "Deep Piano 1", "valsound.piano4", 5);
			create("PIANO", "Deep Piano 3", "valsound.piano5", 0);
			create("PIANO", "E.piano #2", "valsound.piano6", 1);
			create("PIANO", "E.piano #3", "valsound.piano7", 2);
			create("PIANO", "E.piano #4(2+)", "valsound.piano8", 3);
			create("PIANO", "E.(Bell)Piano #5", "valsound.piano9", 4);
			create("PIANO", "E.Piano #6", "valsound.piano10", 5);
			create("PIANO", "E.Piano #7", "valsound.piano11", 0);
			create("PIANO", "Harpci chord 1", "valsound.piano12", 1);
			create("PIANO", "Harpci 2", "valsound.piano13", 2);
			create("PIANO", "Piano1 (ML1,10,05,01)", "valsound.piano14", 3);
			create("PIANO", "Piano3", "valsound.piano15", 4);
			create("PIANO", "Piano4", "valsound.piano16", 5);
			create("PIANO", "Digital Piano #5", "valsound.piano17", 0);
			create("PIANO", "Piano 6 High-tone", "valsound.piano18", 1);
			create("PIANO", "Panning Harpci", "valsound.piano19", 2);
			create("PIANO", "Yam Harpci chord", "valsound.piano20", 3);
			
			create("SPECIAL", "S.E.(Detune is needed o2c)", "valsound.se1", 4);
			create("SPECIAL", "S.E. 2 o0-1-2", "valsound.se2", 5);
			create("SPECIAL", "S.E. 3(Feedin /noise add.)", "valsound.se3", 0);
			create("SPECIAL", "Digital 1", "valsound.special1", 1);
			create("SPECIAL", "Digital 2", "valsound.special2", 2);
			create("SPECIAL", "Digital[BAS] 3 o2-o3", "valsound.special3", 3);
			create("SPECIAL", "Digital[GTR] 3 o2-o3", "valsound.special4", 4);
			create("SPECIAL", "Digital 4 o4a", "valsound.special5", 5);
			
			create("STRINGS", "Accordion1", "valsound.strpad1", 0);
			create("STRINGS", "Accordion2", "valsound.strpad2", 1);
			create("STRINGS", "Accordion3", "valsound.strpad3", 2);
			create("STRINGS", "Chorus #2(Voice)", "valsound.strpad4", 3);
			create("STRINGS", "Chorus #3", "valsound.strpad5", 4);
			create("STRINGS", "Chorus #4", "valsound.strpad6", 5);
			create("STRINGS", "F.Strings 1", "valsound.strpad7", 0);
			create("STRINGS", "F.Strings 2", "valsound.strpad8", 1);
			create("STRINGS", "F.Strings 3", "valsound.strpad9", 2);
			create("STRINGS", "F.Strings 4 (low)", "valsound.strpad10", 3);
			create("STRINGS", "Pizzicate#1(KOTO2)", "valsound.strpad11", 4);
			create("STRINGS", "sound truck modoki", "valsound.strpad12", 5);
			create("STRINGS", "Strings", "valsound.strpad13", 0);
			create("STRINGS", "Synth Accordion", "valsound.strpad14", 1);
			create("STRINGS", "Phaser synthe.", "valsound.strpad15", 2);
			create("STRINGS", "FB Synth.", "valsound.strpad16", 3);
			create("STRINGS", "Synth Strings MB", "valsound.strpad17", 4);
			create("STRINGS", "Synth Strings #2", "valsound.strpad18", 5);
			create("STRINGS", "Synth.Sweep Pad #1", "valsound.strpad19", 0);
			create("STRINGS", "Twin synth. #1 Calm", "valsound.strpad20", 1);
			create("STRINGS", "Twin synth. #2 FB", "valsound.strpad21", 2);
			create("STRINGS", "Twin synth. #3 FB", "valsound.strpad22", 3);
			create("STRINGS", "Vocoder voice1", "valsound.strpad23", 4);
			create("STRINGS", "Voice o3-o5", "valsound.strpad24", 5);
			create("STRINGS", "Voice' o3-o5", "valsound.strpad25", 0);
			
			create("WIND", "Clarinet #1", "valsound.wind1", 1);
			create("WIND", "Clarinet #2 Brighter", "valsound.wind2", 2);
			create("WIND", "E.Flute", "valsound.wind3", 3);
			create("WIND", "E.Flute 2", "valsound.wind4", 4);
			create("WIND", "Flute + Bell", "valsound.wind5", 5);
			create("WIND", "Old flute", "valsound.wind6", 0);
			create("WIND", "Whitsle 1", "valsound.wind7", 1);
			create("WIND", "Whitsle 2", "valsound.wind8", 2);
			
			create("WORLD", "Banjo (Harpci)", "valsound.world1", 3);
			create("WORLD", "KOTO", "valsound.world2", 4);
			create("WORLD", "Koto 2", "valsound.world3", 5);
			create("WORLD", "Sitar 1", "valsound.world4", 0);
			create("WORLD", "Shamisen 2", "valsound.world5", 1);
			create("WORLD", "Shamisen 1", "valsound.world6", 2);
			create("WORLD", "Synth Shamisen", "valsound.world7", 3);
			
			create("DRUMKIT", "Simple Drumkit", "drumkit.1", 20);
			create("DRUMKIT", "SiON Drumkit", "drumkit.2", 20);
			create("DRUMKIT", "Midi Drumkit", "drumkit.3", 20);
		}
		
		public function fixlengths(gfx:graphicsclass):void {
			//Fix the lengths of the names
			for (var i:int = 0; i < listsize; i++) {
				while (gfx.len(name[i]) > 95) {
					name[i] = help.Left(name[i], name[i].length - 1)					
				}
			}
		}
		
		public function create(cat:String, t1:String, t2:String, pal:int):void {
			category.push(cat);
			name.push(t1);
			voice.push(t2);
			palette.push(pal);
			listsize++;
		}
		
		public function makesublist(cat:String):void {
			//Make sublist based on category
			sublistsize = 0;
			for (var i:int = 0; i < listsize; i++) {
				if (category[i] == cat) {
					add(name[i], voice[i], palette[i]);
				}
			}
		}
		
		public function add(t1:String, t2:String, pal:int):void {
			subname[sublistsize] = t1;
			subvoice[sublistsize] = t2;
			subpalette[sublistsize] = pal;
			
			sublistsize++;
		}
		
		public function getfirst(cat:String):int {
			//Return the index of the first member of this category
			for (var i:int = 0; i < listsize; i++) {
				if (category[i] == cat) return i;
			}
			return 0;
		}
		
		public function getvoice(n:String):int {
			//Get the voice by name, return index
			for (var i:int = 0; i < listsize; i++) {
				if (name[i] == n) return i;
			}
			return 0;
		}
		
		public var category:Vector.<String> = new Vector.<String>;
		public var name:Vector.<String> = new Vector.<String>;
		public var voice:Vector.<String> = new Vector.<String>;
		public var palette:Vector.<int> = new Vector.<int>;
		
		public var subname:Vector.<String> = new Vector.<String>;
		public var subvoice:Vector.<String> = new Vector.<String>;
		public var subpalette:Vector.<int> = new Vector.<int>;
		public var sublistsize:int;
		
		public var listsize:int;
		public var index:int;
		public var pagenum:int;
	}
}
