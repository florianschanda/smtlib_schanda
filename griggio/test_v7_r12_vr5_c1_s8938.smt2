(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :category "crafted")
(set-info :source |Alberto Griggio <griggio@fbk.eu>. These benchmarks were used for the evaluation in the following paper: L. Haller, A. Griggio, M. Brain, D. Kroening: Deciding floating-point logic with systematic abstraction. FMCAD 2012. Real-numbered literals have been automatically translated by MathSAT|)
(set-info :status sat)
;; MathSAT API call trace
;; generated on 05/20/15 17:24:57

(declare-fun x0 () (_ FloatingPoint 8 24))
(declare-fun x1 () (_ FloatingPoint 8 24))
(declare-fun x2 () (_ FloatingPoint 8 24))
(declare-fun x3 () (_ FloatingPoint 8 24))
(declare-fun x4 () (_ FloatingPoint 8 24))
(declare-fun x5 () (_ FloatingPoint 8 24))
(declare-fun x6 () (_ FloatingPoint 8 24))
(define-fun _t_10 () (_ FloatingPoint 8 24) (fp #b0 #b10000001 #b01000000000000000000000))
(define-fun _t_12 () (_ FloatingPoint 8 24) (fp #b1 #b10000001 #b01000000000000000000000))
(define-fun _t_13 () (_ FloatingPoint 8 24) x0)
(define-fun _t_14 () Bool (fp.leq _t_12 _t_13))
(define-fun _t_15 () Bool (fp.leq _t_13 _t_10))
(define-fun _t_16 () Bool (and _t_14 _t_15))
(assert _t_16)
(define-fun _t_17 () (_ FloatingPoint 8 24) x1)
(define-fun _t_18 () Bool (fp.leq _t_12 _t_17))
(define-fun _t_19 () Bool (fp.leq _t_17 _t_10))
(define-fun _t_20 () Bool (and _t_18 _t_19))
(assert _t_20)
(define-fun _t_21 () (_ FloatingPoint 8 24) x2)
(define-fun _t_22 () Bool (fp.leq _t_12 _t_21))
(define-fun _t_23 () Bool (fp.leq _t_21 _t_10))
(define-fun _t_24 () Bool (and _t_22 _t_23))
(assert _t_24)
(define-fun _t_25 () (_ FloatingPoint 8 24) x3)
(define-fun _t_26 () Bool (fp.leq _t_12 _t_25))
(define-fun _t_27 () Bool (fp.leq _t_25 _t_10))
(define-fun _t_28 () Bool (and _t_26 _t_27))
(assert _t_28)
(define-fun _t_29 () (_ FloatingPoint 8 24) x4)
(define-fun _t_30 () Bool (fp.leq _t_12 _t_29))
(define-fun _t_31 () Bool (fp.leq _t_29 _t_10))
(define-fun _t_32 () Bool (and _t_30 _t_31))
(assert _t_32)
(define-fun _t_33 () (_ FloatingPoint 8 24) x5)
(define-fun _t_34 () Bool (fp.leq _t_12 _t_33))
(define-fun _t_35 () Bool (fp.leq _t_33 _t_10))
(define-fun _t_36 () Bool (and _t_34 _t_35))
(assert _t_36)
(define-fun _t_37 () (_ FloatingPoint 8 24) x6)
(define-fun _t_38 () Bool (fp.leq _t_12 _t_37))
(define-fun _t_39 () Bool (fp.leq _t_37 _t_10))
(define-fun _t_40 () Bool (and _t_38 _t_39))
(assert _t_40)
(define-fun _t_3 () RoundingMode RNE)
(define-fun _t_42 () (_ FloatingPoint 8 24) (fp #b0 #b00000000 #b00000000000000000000000))
(define-fun _t_45 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b11100011010100111111100))
(define-fun _t_48 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01011000100100110111001))
(define-fun _t_49 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_48))
(define-fun _t_50 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_49))
(define-fun _t_53 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10101010011111101111100))
(define-fun _t_54 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_53))
(define-fun _t_55 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_50 _t_54))
(define-fun _t_57 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01011101101100100010110))
(define-fun _t_58 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_57))
(define-fun _t_59 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_55 _t_58))
(define-fun _t_61 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01111010010111100011011))
(define-fun _t_62 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_61))
(define-fun _t_63 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_59 _t_62))
(define-fun _t_65 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11000001000001100010001))
(define-fun _t_66 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_65))
(define-fun _t_67 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_63 _t_66))
(define-fun _t_69 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00001010001111010111000))
(define-fun _t_70 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_69))
(define-fun _t_71 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_67 _t_70))
(define-fun _t_74 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00001000001100010010011))
(define-fun _t_75 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_74))
(define-fun _t_76 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_71 _t_75))
(define-fun _t_77 () Bool (fp.leq _t_45 _t_76))
(assert _t_77)
(define-fun _t_79 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11001111110111110011101))
(define-fun _t_81 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01111010010111100011011))
(define-fun _t_82 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_81))
(define-fun _t_83 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_82))
(define-fun _t_86 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11100001010001111010110))
(define-fun _t_87 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_86))
(define-fun _t_88 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_83 _t_87))
(define-fun _t_90 () (_ FloatingPoint 8 24) (fp #b0 #b01110111 #b01000111101011100001001))
(define-fun _t_91 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_90))
(define-fun _t_92 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_88 _t_91))
(define-fun _t_95 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01010111100011010101000))
(define-fun _t_96 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_95))
(define-fun _t_97 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_92 _t_96))
(define-fun _t_100 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10000101000111101011100))
(define-fun _t_101 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_100))
(define-fun _t_102 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_97 _t_101))
(define-fun _t_104 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01110110110010001011001))
(define-fun _t_105 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_104))
(define-fun _t_106 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_102 _t_105))
(define-fun _t_108 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b11010010111100011010101))
(define-fun _t_109 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_108))
(define-fun _t_110 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_106 _t_109))
(define-fun _t_111 () Bool (fp.leq _t_79 _t_110))
(assert _t_111)
(define-fun _t_112 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01011000100100110111001))
(define-fun _t_115 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11001101110100101111001))
(define-fun _t_117 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10110001001001101110101))
(define-fun _t_118 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_117))
(define-fun _t_119 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_118))
(define-fun _t_121 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11111101111100111011011))
(define-fun _t_122 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_121))
(define-fun _t_123 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_119 _t_122))
(define-fun _t_126 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b00100010110100001110010))
(define-fun _t_127 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_126))
(define-fun _t_128 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_123 _t_127))
(define-fun _t_131 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10100100110111010011000))
(define-fun _t_132 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_131))
(define-fun _t_133 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_128 _t_132))
(define-fun _t_135 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10101100000010000011001))
(define-fun _t_136 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_135))
(define-fun _t_137 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_133 _t_136))
(define-fun _t_140 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b01001111110111110011101))
(define-fun _t_141 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_140))
(define-fun _t_142 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_137 _t_141))
(define-fun _t_143 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_112))
(define-fun _t_144 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_142 _t_143))
(define-fun _t_145 () Bool (fp.leq _t_115 _t_144))
(assert _t_145)
(define-fun _t_147 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10110101001111110111110))
(define-fun _t_149 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11100001110010101100000))
(define-fun _t_150 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_149))
(define-fun _t_151 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_150))
(define-fun _t_154 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10111110011101101100011))
(define-fun _t_155 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_154))
(define-fun _t_156 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_151 _t_155))
(define-fun _t_158 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b01000011100101011000000))
(define-fun _t_159 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_158))
(define-fun _t_160 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_156 _t_159))
(define-fun _t_163 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11010111000010100011111))
(define-fun _t_164 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_163))
(define-fun _t_165 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_160 _t_164))
(define-fun _t_168 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11110110110010001011001))
(define-fun _t_169 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_168))
(define-fun _t_170 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_165 _t_169))
(define-fun _t_172 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00010010111100011010100))
(define-fun _t_173 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_172))
(define-fun _t_174 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_170 _t_173))
(define-fun _t_177 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b10111010010111100011011))
(define-fun _t_178 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_177))
(define-fun _t_179 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_174 _t_178))
(define-fun _t_180 () Bool (fp.leq _t_179 _t_147))
(assert _t_180)
(define-fun _t_182 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11110000101000111101100))
(define-fun _t_184 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01000111101011100001001))
(define-fun _t_185 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_184))
(define-fun _t_186 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_185))
(define-fun _t_188 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01010010111100011010100))
(define-fun _t_189 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_188))
(define-fun _t_190 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_186 _t_189))
(define-fun _t_192 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00111011111001110110110))
(define-fun _t_193 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_192))
(define-fun _t_194 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_190 _t_193))
(define-fun _t_197 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01111010111000010100100))
(define-fun _t_198 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_197))
(define-fun _t_199 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_194 _t_198))
(define-fun _t_202 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b11010111000010100011110))
(define-fun _t_203 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_202))
(define-fun _t_204 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_199 _t_203))
(define-fun _t_207 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00100000010000011000100))
(define-fun _t_208 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_207))
(define-fun _t_209 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_204 _t_208))
(define-fun _t_212 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11100000010000011000100))
(define-fun _t_213 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_212))
(define-fun _t_214 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_209 _t_213))
(define-fun _t_215 () Bool (fp.leq _t_214 _t_182))
(assert _t_215)
(define-fun _t_217 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00000000100000110001001))
(define-fun _t_219 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00111010010111100011011))
(define-fun _t_220 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_219))
(define-fun _t_221 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_220))
(define-fun _t_222 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_212))
(define-fun _t_223 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_221 _t_222))
(define-fun _t_225 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b11011111001110110110001))
(define-fun _t_226 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_225))
(define-fun _t_227 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_223 _t_226))
(define-fun _t_229 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11000010100011110101110))
(define-fun _t_230 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_229))
(define-fun _t_231 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_227 _t_230))
(define-fun _t_233 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01101010011111101111100))
(define-fun _t_234 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_233))
(define-fun _t_235 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_231 _t_234))
(define-fun _t_237 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01101110100101111000110))
(define-fun _t_238 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_237))
(define-fun _t_239 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_235 _t_238))
(define-fun _t_242 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00011110101110000101001))
(define-fun _t_243 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_242))
(define-fun _t_244 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_239 _t_243))
(define-fun _t_245 () Bool (fp.leq _t_244 _t_217))
(assert _t_245)
(define-fun _t_248 () (_ FloatingPoint 8 24) (fp #b1 #b01111010 #b01000111101011100001001))
(define-fun _t_251 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01011011001000101101000))
(define-fun _t_252 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_251))
(define-fun _t_253 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_252))
(define-fun _t_256 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b01010011111101111100111))
(define-fun _t_257 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_256))
(define-fun _t_258 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_253 _t_257))
(define-fun _t_259 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_219))
(define-fun _t_260 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_258 _t_259))
(define-fun _t_262 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11000001100010010011100))
(define-fun _t_263 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_262))
(define-fun _t_264 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_260 _t_263))
(define-fun _t_267 () (_ FloatingPoint 8 24) (fp #b1 #b01111001 #b10111010010111100011010))
(define-fun _t_268 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_267))
(define-fun _t_269 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_264 _t_268))
(define-fun _t_271 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00010001011010000111001))
(define-fun _t_272 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_271))
(define-fun _t_273 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_269 _t_272))
(define-fun _t_275 () (_ FloatingPoint 8 24) (fp #b1 #b01111010 #b11010010111100011010101))
(define-fun _t_276 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_275))
(define-fun _t_277 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_273 _t_276))
(define-fun _t_278 () Bool (fp.leq _t_248 _t_277))
(assert _t_278)
(define-fun _t_281 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11011001000101101000011))
(define-fun _t_283 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11100101011000000100001))
(define-fun _t_284 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_283))
(define-fun _t_285 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_284))
(define-fun _t_287 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01101110100101111000110))
(define-fun _t_288 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_287))
(define-fun _t_289 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_285 _t_288))
(define-fun _t_292 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10100101011000000100001))
(define-fun _t_293 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_292))
(define-fun _t_294 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_289 _t_293))
(define-fun _t_297 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11001100010010011011100))
(define-fun _t_298 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_297))
(define-fun _t_299 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_294 _t_298))
(define-fun _t_302 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00001011010000111001011))
(define-fun _t_303 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_302))
(define-fun _t_304 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_299 _t_303))
(define-fun _t_306 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10101101100100010110100))
(define-fun _t_307 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_306))
(define-fun _t_308 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_304 _t_307))
(define-fun _t_310 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11001000001100010010011))
(define-fun _t_311 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_310))
(define-fun _t_312 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_308 _t_311))
(define-fun _t_313 () Bool (fp.leq _t_281 _t_312))
(assert _t_313)
(define-fun _t_316 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01110110110010001011001))
(define-fun _t_319 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00110011101101100100011))
(define-fun _t_320 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_319))
(define-fun _t_321 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_320))
(define-fun _t_323 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01110001101010011111110))
(define-fun _t_324 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_323))
(define-fun _t_325 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_321 _t_324))
(define-fun _t_327 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01110111110011101101100))
(define-fun _t_328 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_327))
(define-fun _t_329 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_325 _t_328))
(define-fun _t_332 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01100000010000011000100))
(define-fun _t_333 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_332))
(define-fun _t_334 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_329 _t_333))
(define-fun _t_336 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01111011111001110110110))
(define-fun _t_337 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_336))
(define-fun _t_338 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_334 _t_337))
(define-fun _t_340 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11101111000110101010000))
(define-fun _t_341 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_340))
(define-fun _t_342 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_338 _t_341))
(define-fun _t_345 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01000010100011110101101))
(define-fun _t_346 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_345))
(define-fun _t_347 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_342 _t_346))
(define-fun _t_348 () Bool (fp.leq _t_316 _t_347))
(assert _t_348)
(define-fun _t_349 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11010111000010100011111))
(define-fun _t_350 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11001100010010011011100))
(define-fun _t_353 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11011101001011110001100))
(define-fun _t_356 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10001001001101110100110))
(define-fun _t_357 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_356))
(define-fun _t_358 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_357))
(define-fun _t_359 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_349))
(define-fun _t_360 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_358 _t_359))
(define-fun _t_362 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10111110111110011101110))
(define-fun _t_363 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_362))
(define-fun _t_364 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_360 _t_363))
(define-fun _t_366 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00000101101000011100100))
(define-fun _t_367 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_366))
(define-fun _t_368 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_364 _t_367))
(define-fun _t_369 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_350))
(define-fun _t_370 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_368 _t_369))
(define-fun _t_373 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11010001111010111000011))
(define-fun _t_374 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_373))
(define-fun _t_375 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_370 _t_374))
(define-fun _t_377 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b00000110001001001101111))
(define-fun _t_378 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_377))
(define-fun _t_379 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_375 _t_378))
(define-fun _t_380 () Bool (fp.leq _t_353 _t_379))
(assert _t_380)
(define-fun _t_382 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10101100100010110100001))
(define-fun _t_384 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01001110010101100000001))
(define-fun _t_385 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_384))
(define-fun _t_386 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_385))
(define-fun _t_388 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b00111111011111001110111))
(define-fun _t_389 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_388))
(define-fun _t_390 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_386 _t_389))
(define-fun _t_393 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01110010001011010000110))
(define-fun _t_394 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_393))
(define-fun _t_395 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_390 _t_394))
(define-fun _t_398 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00101111100111011011001))
(define-fun _t_399 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_398))
(define-fun _t_400 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_395 _t_399))
(define-fun _t_402 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10000001000001100010010))
(define-fun _t_403 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_402))
(define-fun _t_404 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_400 _t_403))
(define-fun _t_407 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11110001101010011111101))
(define-fun _t_408 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_407))
(define-fun _t_409 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_404 _t_408))
(define-fun _t_411 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00010110100001110010110))
(define-fun _t_412 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_411))
(define-fun _t_413 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_409 _t_412))
(define-fun _t_414 () Bool (fp.leq _t_413 _t_382))
(assert _t_414)
(define-fun _t_417 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10001111010111000010011))
(define-fun _t_420 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b11111101111100111011011))
(define-fun _t_421 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_420))
(define-fun _t_422 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_421))
(define-fun _t_425 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10001001101110100101110))
(define-fun _t_426 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_425))
(define-fun _t_427 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_422 _t_426))
(define-fun _t_430 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00111001010110000001000))
(define-fun _t_431 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_430))
(define-fun _t_432 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_427 _t_431))
(define-fun _t_435 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00101010011111101111100))
(define-fun _t_436 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_435))
(define-fun _t_437 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_432 _t_436))
(define-fun _t_440 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11111101111100111011010))
(define-fun _t_441 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_440))
(define-fun _t_442 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_437 _t_441))
(define-fun _t_444 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b11100011010100111111011))
(define-fun _t_445 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_444))
(define-fun _t_446 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_442 _t_445))
(define-fun _t_448 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010110000001000001100))
(define-fun _t_449 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_448))
(define-fun _t_450 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_446 _t_449))
(define-fun _t_451 () Bool (fp.leq _t_417 _t_450))
(assert _t_451)
(check-sat)
(exit)
