(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :category "crafted")
(set-info :source |Alberto Griggio <griggio@fbk.eu>. These benchmarks were used for the evaluation in the following paper: L. Haller, A. Griggio, M. Brain, D. Kroening: Deciding floating-point logic with systematic abstraction. FMCAD 2012. Real-numbered literals have been automatically translated by MathSAT|)
(set-info :status unknown)
;; MathSAT API call trace
;; generated on 05/20/15 17:24:57

(declare-fun x0 () (_ FloatingPoint 8 24))
(declare-fun x1 () (_ FloatingPoint 8 24))
(declare-fun x2 () (_ FloatingPoint 8 24))
(declare-fun x3 () (_ FloatingPoint 8 24))
(declare-fun x4 () (_ FloatingPoint 8 24))
(declare-fun x5 () (_ FloatingPoint 8 24))
(declare-fun x6 () (_ FloatingPoint 8 24))
(define-fun _t_10 () (_ FloatingPoint 8 24) (fp #b0 #b10000010 #b01000000000000000000000))
(define-fun _t_12 () (_ FloatingPoint 8 24) (fp #b1 #b10000010 #b01000000000000000000000))
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
(define-fun _t_45 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10100001010001111010110))
(define-fun _t_48 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10010100111111011111001))
(define-fun _t_49 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_48))
(define-fun _t_50 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_49))
(define-fun _t_52 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b11111011111001110110110))
(define-fun _t_53 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_52))
(define-fun _t_54 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_50 _t_53))
(define-fun _t_56 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10101011000000100000110))
(define-fun _t_57 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_56))
(define-fun _t_58 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_54 _t_57))
(define-fun _t_60 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01000011100101011000001))
(define-fun _t_61 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_60))
(define-fun _t_62 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_58 _t_61))
(define-fun _t_65 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b11100011010100111111100))
(define-fun _t_66 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_65))
(define-fun _t_67 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_62 _t_66))
(define-fun _t_70 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00101111000110101010000))
(define-fun _t_71 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_70))
(define-fun _t_72 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_67 _t_71))
(define-fun _t_75 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10000011000100100110110))
(define-fun _t_76 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_75))
(define-fun _t_77 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_72 _t_76))
(define-fun _t_78 () Bool (fp.leq _t_45 _t_77))
(assert _t_78)
(define-fun _t_80 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10001101110100101111001))
(define-fun _t_83 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00001011010000111001011))
(define-fun _t_84 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_83))
(define-fun _t_85 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_84))
(define-fun _t_87 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b11111011111001110110101))
(define-fun _t_88 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_87))
(define-fun _t_89 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_85 _t_88))
(define-fun _t_91 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11010011011101001011110))
(define-fun _t_92 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_91))
(define-fun _t_93 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_89 _t_92))
(define-fun _t_95 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b10011101101100100010110))
(define-fun _t_96 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_95))
(define-fun _t_97 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_93 _t_96))
(define-fun _t_100 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01111001110110110010001))
(define-fun _t_101 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_100))
(define-fun _t_102 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_97 _t_101))
(define-fun _t_104 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00101000111101011100001))
(define-fun _t_105 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_104))
(define-fun _t_106 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_102 _t_105))
(define-fun _t_109 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01111000110101001111111))
(define-fun _t_110 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_109))
(define-fun _t_111 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_106 _t_110))
(define-fun _t_112 () Bool (fp.leq _t_111 _t_80))
(assert _t_112)
(define-fun _t_114 () (_ FloatingPoint 8 24) (fp #b0 #b01111001 #b01000111101011100001010))
(define-fun _t_115 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_114))
(define-fun _t_116 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_115))
(define-fun _t_118 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11011000100100110111001))
(define-fun _t_119 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_118))
(define-fun _t_120 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_116 _t_119))
(define-fun _t_122 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b11011011001000101100111))
(define-fun _t_123 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_122))
(define-fun _t_124 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_120 _t_123))
(define-fun _t_126 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01110011101101100100011))
(define-fun _t_127 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_126))
(define-fun _t_128 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_124 _t_127))
(define-fun _t_131 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10100010010011011101001))
(define-fun _t_132 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_131))
(define-fun _t_133 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_128 _t_132))
(define-fun _t_135 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11001101110100101111001))
(define-fun _t_136 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_135))
(define-fun _t_137 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_133 _t_136))
(define-fun _t_139 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01010100111111011111001))
(define-fun _t_140 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_139))
(define-fun _t_141 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_137 _t_140))
(define-fun _t_142 () Bool (fp.leq _t_60 _t_141))
(assert _t_142)
(define-fun _t_145 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01011100001010001111011))
(define-fun _t_148 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10110101110000101001000))
(define-fun _t_149 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_148))
(define-fun _t_150 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_149))
(define-fun _t_152 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00100101111000110101001))
(define-fun _t_153 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_152))
(define-fun _t_154 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_150 _t_153))
(define-fun _t_156 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01000110101001111111000))
(define-fun _t_157 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_156))
(define-fun _t_158 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_154 _t_157))
(define-fun _t_161 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b10110000001000001100001))
(define-fun _t_162 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_161))
(define-fun _t_163 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_158 _t_162))
(define-fun _t_166 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11101101100100010110100))
(define-fun _t_167 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_166))
(define-fun _t_168 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_163 _t_167))
(define-fun _t_170 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01111100011010100111110))
(define-fun _t_171 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_170))
(define-fun _t_172 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_168 _t_171))
(define-fun _t_175 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00001000001100010010011))
(define-fun _t_176 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_175))
(define-fun _t_177 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_172 _t_176))
(define-fun _t_178 () Bool (fp.leq _t_145 _t_177))
(assert _t_178)
(define-fun _t_180 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01010100011110101110001))
(define-fun _t_183 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00100110111010010111100))
(define-fun _t_184 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_183))
(define-fun _t_185 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_184))
(define-fun _t_188 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11111010111000010100011))
(define-fun _t_189 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_188))
(define-fun _t_190 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_185 _t_189))
(define-fun _t_193 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11011011101001011110001))
(define-fun _t_194 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_193))
(define-fun _t_195 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_190 _t_194))
(define-fun _t_198 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10111111011111001110110))
(define-fun _t_199 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_198))
(define-fun _t_200 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_195 _t_199))
(define-fun _t_203 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b00000100000110001001010))
(define-fun _t_204 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_203))
(define-fun _t_205 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_200 _t_204))
(define-fun _t_207 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00111011111001110110110))
(define-fun _t_208 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_207))
(define-fun _t_209 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_205 _t_208))
(define-fun _t_211 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01100111111011111001110))
(define-fun _t_212 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_211))
(define-fun _t_213 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_209 _t_212))
(define-fun _t_214 () Bool (fp.leq _t_180 _t_213))
(assert _t_214)
(define-fun _t_216 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10100111111011111001111))
(define-fun _t_218 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b01101000011100101011000))
(define-fun _t_219 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_218))
(define-fun _t_220 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_219))
(define-fun _t_223 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11011010100111111011110))
(define-fun _t_224 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_223))
(define-fun _t_225 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_220 _t_224))
(define-fun _t_228 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11110110110010001011001))
(define-fun _t_229 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_228))
(define-fun _t_230 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_225 _t_229))
(define-fun _t_233 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00111001110110110010001))
(define-fun _t_234 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_233))
(define-fun _t_235 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_230 _t_234))
(define-fun _t_238 () (_ FloatingPoint 8 24) (fp #b1 #b01111010 #b00110111010010111100011))
(define-fun _t_239 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_238))
(define-fun _t_240 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_235 _t_239))
(define-fun _t_242 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01111001010110000001000))
(define-fun _t_243 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_242))
(define-fun _t_244 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_240 _t_243))
(define-fun _t_246 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b10101001111110111110011))
(define-fun _t_247 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_246))
(define-fun _t_248 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_244 _t_247))
(define-fun _t_249 () Bool (fp.leq _t_216 _t_248))
(assert _t_249)
(define-fun _t_251 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01111100011010100111110))
(define-fun _t_253 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01000110101001111111000))
(define-fun _t_254 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_253))
(define-fun _t_255 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_254))
(define-fun _t_258 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10010110100001110010110))
(define-fun _t_259 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_258))
(define-fun _t_260 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_255 _t_259))
(define-fun _t_262 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b01000001100010010011011))
(define-fun _t_263 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_262))
(define-fun _t_264 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_260 _t_263))
(define-fun _t_267 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00000011100101011000001))
(define-fun _t_268 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_267))
(define-fun _t_269 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_264 _t_268))
(define-fun _t_272 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00111011011001000101100))
(define-fun _t_273 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_272))
(define-fun _t_274 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_269 _t_273))
(define-fun _t_277 () (_ FloatingPoint 8 24) (fp #b1 #b01111001 #b10011001100110011001101))
(define-fun _t_278 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_277))
(define-fun _t_279 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_274 _t_278))
(define-fun _t_282 () (_ FloatingPoint 8 24) (fp #b1 #b01110111 #b00000110001001001101111))
(define-fun _t_283 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_282))
(define-fun _t_284 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_279 _t_283))
(define-fun _t_285 () Bool (fp.leq _t_284 _t_251))
(assert _t_285)
(define-fun _t_286 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10111111011111001110110))
(define-fun _t_289 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10001001001101110100110))
(define-fun _t_291 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10110100001110010101100))
(define-fun _t_292 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_291))
(define-fun _t_293 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_292))
(define-fun _t_294 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_286))
(define-fun _t_295 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_293 _t_294))
(define-fun _t_296 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_216))
(define-fun _t_297 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_295 _t_296))
(define-fun _t_299 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010000011000100100110))
(define-fun _t_300 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_299))
(define-fun _t_301 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_297 _t_300))
(define-fun _t_303 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10101011000000100000110))
(define-fun _t_304 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_303))
(define-fun _t_305 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_301 _t_304))
(define-fun _t_308 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10010100011110101110000))
(define-fun _t_309 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_308))
(define-fun _t_310 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_305 _t_309))
(define-fun _t_312 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00000001000001100010010))
(define-fun _t_313 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_312))
(define-fun _t_314 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_310 _t_313))
(define-fun _t_315 () Bool (fp.leq _t_314 _t_289))
(assert _t_315)
(define-fun _t_318 () (_ FloatingPoint 8 24) (fp #b1 #b01110110 #b00000110001001001101111))
(define-fun _t_320 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10001010001111010111000))
(define-fun _t_321 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_320))
(define-fun _t_322 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_321))
(define-fun _t_325 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11110111110011101101100))
(define-fun _t_326 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_325))
(define-fun _t_327 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_322 _t_326))
(define-fun _t_329 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00010100011110101110001))
(define-fun _t_330 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_329))
(define-fun _t_331 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_327 _t_330))
(define-fun _t_334 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11110100101111000110100))
(define-fun _t_335 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_334))
(define-fun _t_336 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_331 _t_335))
(define-fun _t_338 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10100001110010101100000))
(define-fun _t_339 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_338))
(define-fun _t_340 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_336 _t_339))
(define-fun _t_343 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00111011011001000101100))
(define-fun _t_344 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_343))
(define-fun _t_345 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_340 _t_344))
(define-fun _t_347 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01111111011111001110110))
(define-fun _t_348 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_347))
(define-fun _t_349 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_345 _t_348))
(define-fun _t_350 () Bool (fp.leq _t_318 _t_349))
(assert _t_350)
(define-fun _t_352 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b10001101010011111110000))
(define-fun _t_355 () (_ FloatingPoint 8 24) (fp #b1 #b01111010 #b01111000110101001111111))
(define-fun _t_356 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_355))
(define-fun _t_357 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_356))
(define-fun _t_359 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01010010111100011010101))
(define-fun _t_360 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_359))
(define-fun _t_361 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_357 _t_360))
(define-fun _t_364 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11010010111100011010100))
(define-fun _t_365 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_364))
(define-fun _t_366 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_361 _t_365))
(define-fun _t_369 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01011011001000101101000))
(define-fun _t_370 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_369))
(define-fun _t_371 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_366 _t_370))
(define-fun _t_373 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11101010011111101111100))
(define-fun _t_374 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_373))
(define-fun _t_375 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_371 _t_374))
(define-fun _t_378 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b01011000000100000110001))
(define-fun _t_379 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_378))
(define-fun _t_380 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_375 _t_379))
(define-fun _t_382 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11000001100010010011100))
(define-fun _t_383 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_382))
(define-fun _t_384 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_380 _t_383))
(define-fun _t_385 () Bool (fp.leq _t_352 _t_384))
(assert _t_385)
(define-fun _t_387 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00101111100111011011001))
(define-fun _t_389 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b01011110001101010100000))
(define-fun _t_390 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_389))
(define-fun _t_391 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_390))
(define-fun _t_393 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01011110001101010100000))
(define-fun _t_394 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_393))
(define-fun _t_395 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_391 _t_394))
(define-fun _t_397 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01110000101000111101100))
(define-fun _t_398 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_397))
(define-fun _t_399 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_395 _t_398))
(define-fun _t_402 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01001001101110100101110))
(define-fun _t_403 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_402))
(define-fun _t_404 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_399 _t_403))
(define-fun _t_407 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10011100101011000000011))
(define-fun _t_408 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_407))
(define-fun _t_409 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_404 _t_408))
(define-fun _t_411 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10110101001111110111110))
(define-fun _t_412 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_411))
(define-fun _t_413 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_409 _t_412))
(define-fun _t_416 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b01101100100010110100010))
(define-fun _t_417 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_416))
(define-fun _t_418 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_413 _t_417))
(define-fun _t_419 () Bool (fp.leq _t_418 _t_387))
(assert _t_419)
(define-fun _t_422 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01110110010001011010001))
(define-fun _t_424 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00000111001010110000001))
(define-fun _t_425 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_424))
(define-fun _t_426 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_425))
(define-fun _t_428 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00011010000111001010110))
(define-fun _t_429 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_428))
(define-fun _t_430 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_426 _t_429))
(define-fun _t_431 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_45))
(define-fun _t_432 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_430 _t_431))
(define-fun _t_435 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01001101010011111110000))
(define-fun _t_436 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_435))
(define-fun _t_437 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_432 _t_436))
(define-fun _t_440 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11111011111001110110110))
(define-fun _t_441 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_440))
(define-fun _t_442 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_437 _t_441))
(define-fun _t_445 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10111010010111100011010))
(define-fun _t_446 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_445))
(define-fun _t_447 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_442 _t_446))
(define-fun _t_449 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00111110011101101100100))
(define-fun _t_450 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_449))
(define-fun _t_451 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_447 _t_450))
(define-fun _t_452 () Bool (fp.leq _t_451 _t_422))
(assert _t_452)
(define-fun _t_455 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01100000110001001001110))
(define-fun _t_458 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00011011101001011110010))
(define-fun _t_459 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_458))
(define-fun _t_460 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_459))
(define-fun _t_462 () (_ FloatingPoint 8 24) (fp #b0 #b01111000 #b10001001001101110100101))
(define-fun _t_463 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_462))
(define-fun _t_464 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_460 _t_463))
(define-fun _t_466 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00111101111100111011011))
(define-fun _t_467 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_466))
(define-fun _t_468 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_464 _t_467))
(define-fun _t_471 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01011000000100000110000))
(define-fun _t_472 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_471))
(define-fun _t_473 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_468 _t_472))
(define-fun _t_475 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11011111101111100111011))
(define-fun _t_476 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_475))
(define-fun _t_477 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_473 _t_476))
(define-fun _t_480 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00110110010001011010000))
(define-fun _t_481 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_480))
(define-fun _t_482 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_477 _t_481))
(define-fun _t_484 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10111100011010100111110))
(define-fun _t_485 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_484))
(define-fun _t_486 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_482 _t_485))
(define-fun _t_487 () Bool (fp.leq _t_455 _t_486))
(assert _t_487)
(define-fun _t_490 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00100011110101110000101))
(define-fun _t_492 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10000101101000011100100))
(define-fun _t_493 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_492))
(define-fun _t_494 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_493))
(define-fun _t_497 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b00101011000000100000110))
(define-fun _t_498 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_497))
(define-fun _t_499 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_494 _t_498))
(define-fun _t_501 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00111110011101101100011))
(define-fun _t_502 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_501))
(define-fun _t_503 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_499 _t_502))
(define-fun _t_506 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10011001100110011001100))
(define-fun _t_507 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_506))
(define-fun _t_508 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_503 _t_507))
(define-fun _t_511 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b00000010000011000100100))
(define-fun _t_512 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_511))
(define-fun _t_513 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_508 _t_512))
(define-fun _t_515 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b11100011010100111111011))
(define-fun _t_516 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_515))
(define-fun _t_517 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_513 _t_516))
(define-fun _t_519 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00000100000110001001001))
(define-fun _t_520 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_519))
(define-fun _t_521 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_517 _t_520))
(define-fun _t_522 () Bool (fp.leq _t_490 _t_521))
(assert _t_522)
(define-fun _t_524 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00100011010100111111100))
(define-fun _t_527 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11100011110101110000100))
(define-fun _t_528 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_527))
(define-fun _t_529 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_528))
(define-fun _t_532 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00000101000111101011100))
(define-fun _t_533 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_532))
(define-fun _t_534 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_529 _t_533))
(define-fun _t_537 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b11010000111001010110000))
(define-fun _t_538 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_537))
(define-fun _t_539 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_534 _t_538))
(define-fun _t_541 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00001110110110010001011))
(define-fun _t_542 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_541))
(define-fun _t_543 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_539 _t_542))
(define-fun _t_546 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01111101111100111011011))
(define-fun _t_547 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_546))
(define-fun _t_548 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_543 _t_547))
(define-fun _t_550 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01110110110010001011001))
(define-fun _t_551 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_550))
(define-fun _t_552 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_548 _t_551))
(define-fun _t_555 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00010011011101001011101))
(define-fun _t_556 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_555))
(define-fun _t_557 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_552 _t_556))
(define-fun _t_558 () Bool (fp.leq _t_557 _t_524))
(assert _t_558)
(define-fun _t_560 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10111011011001000101100))
(define-fun _t_562 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10101111000110101010000))
(define-fun _t_563 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_562))
(define-fun _t_564 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_563))
(define-fun _t_565 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_119 _t_564))
(define-fun _t_567 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b01100000010000011000101))
(define-fun _t_568 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_567))
(define-fun _t_569 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_565 _t_568))
(define-fun _t_572 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10110110010001011010001))
(define-fun _t_573 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_572))
(define-fun _t_574 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_569 _t_573))
(define-fun _t_576 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11110000101000111101100))
(define-fun _t_577 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_576))
(define-fun _t_578 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_574 _t_577))
(define-fun _t_580 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10110110010001011010000))
(define-fun _t_581 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_580))
(define-fun _t_582 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_578 _t_581))
(define-fun _t_585 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b10100101111000110101010))
(define-fun _t_586 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_585))
(define-fun _t_587 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_582 _t_586))
(define-fun _t_588 () Bool (fp.leq _t_560 _t_587))
(assert _t_588)
(define-fun _t_591 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b00111001010110000000111))
(define-fun _t_593 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b10010101100000010000011))
(define-fun _t_594 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_593))
(define-fun _t_595 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_42 _t_594))
(define-fun _t_598 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01011011101001011110001))
(define-fun _t_599 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_598))
(define-fun _t_600 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_595 _t_599))
(define-fun _t_602 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b10010001011010000111000))
(define-fun _t_603 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_602))
(define-fun _t_604 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_600 _t_603))
(define-fun _t_607 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b00001010001111010111000))
(define-fun _t_608 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_607))
(define-fun _t_609 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_604 _t_608))
(define-fun _t_611 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10101100000010000011001))
(define-fun _t_612 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_611))
(define-fun _t_613 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_609 _t_612))
(define-fun _t_615 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00101011100001010001110))
(define-fun _t_616 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_33 _t_615))
(define-fun _t_617 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_613 _t_616))
(define-fun _t_620 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01001101110100101111001))
(define-fun _t_621 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_37 _t_620))
(define-fun _t_622 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_617 _t_621))
(define-fun _t_623 () Bool (fp.leq _t_622 _t_591))
(assert _t_623)
(check-sat)
(exit)
