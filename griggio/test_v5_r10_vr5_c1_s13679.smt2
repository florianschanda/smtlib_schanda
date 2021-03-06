(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :category "crafted")
(set-info :source |Alberto Griggio <griggio@fbk.eu>. These benchmarks were used for the evaluation in the following paper: L. Haller, A. Griggio, M. Brain, D. Kroening: Deciding floating-point logic with systematic abstraction. FMCAD 2012. Real-numbered literals have been automatically translated by MathSAT|)
(set-info :status sat)
;; MathSAT API call trace
;; generated on 05/20/15 17:24:55

(declare-fun x0 () (_ FloatingPoint 8 24))
(declare-fun x1 () (_ FloatingPoint 8 24))
(declare-fun x2 () (_ FloatingPoint 8 24))
(declare-fun x3 () (_ FloatingPoint 8 24))
(declare-fun x4 () (_ FloatingPoint 8 24))
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
(define-fun _t_3 () RoundingMode RNE)
(define-fun _t_34 () (_ FloatingPoint 8 24) (fp #b0 #b00000000 #b00000000000000000000000))
(define-fun _t_37 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00001110110110010001011))
(define-fun _t_39 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b10110110010001011010000))
(define-fun _t_40 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_39))
(define-fun _t_41 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_40))
(define-fun _t_43 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00101010011111101111100))
(define-fun _t_44 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_43))
(define-fun _t_45 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_41 _t_44))
(define-fun _t_47 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b10111100011010100111110))
(define-fun _t_48 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_47))
(define-fun _t_49 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_45 _t_48))
(define-fun _t_51 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11110000101000111101100))
(define-fun _t_52 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_51))
(define-fun _t_53 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_49 _t_52))
(define-fun _t_55 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11011100001010001111010))
(define-fun _t_56 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_55))
(define-fun _t_57 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_53 _t_56))
(define-fun _t_58 () Bool (fp.leq _t_57 _t_37))
(assert _t_58)
(define-fun _t_61 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00100010110100001110011))
(define-fun _t_64 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00000011100101011000001))
(define-fun _t_65 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_64))
(define-fun _t_66 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_65))
(define-fun _t_69 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00010001011010000111001))
(define-fun _t_70 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_69))
(define-fun _t_71 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_66 _t_70))
(define-fun _t_74 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11000110101001111111000))
(define-fun _t_75 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_74))
(define-fun _t_76 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_71 _t_75))
(define-fun _t_79 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b00010110100001110010101))
(define-fun _t_80 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_79))
(define-fun _t_81 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_76 _t_80))
(define-fun _t_84 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00000000000000000000000))
(define-fun _t_85 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_84))
(define-fun _t_86 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_81 _t_85))
(define-fun _t_87 () Bool (fp.leq _t_86 _t_61))
(assert _t_87)
(define-fun _t_90 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b00000110001001001101111))
(define-fun _t_93 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b00001100010010011011100))
(define-fun _t_94 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_93))
(define-fun _t_95 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_94))
(define-fun _t_98 () (_ FloatingPoint 8 24) (fp #b1 #b01111010 #b00111111011111001110111))
(define-fun _t_99 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_98))
(define-fun _t_100 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_95 _t_99))
(define-fun _t_102 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01110000001000001100001))
(define-fun _t_103 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_102))
(define-fun _t_104 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_100 _t_103))
(define-fun _t_106 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00111100111011011001001))
(define-fun _t_107 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_106))
(define-fun _t_108 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_104 _t_107))
(define-fun _t_111 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b11001100110011001100110))
(define-fun _t_112 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_111))
(define-fun _t_113 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_108 _t_112))
(define-fun _t_114 () Bool (fp.leq _t_90 _t_113))
(assert _t_114)
(define-fun _t_116 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01100100010110100001101))
(define-fun _t_118 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00111001110110110010001))
(define-fun _t_119 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_118))
(define-fun _t_120 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_119))
(define-fun _t_123 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b01010011111101111100111))
(define-fun _t_124 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_123))
(define-fun _t_125 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_120 _t_124))
(define-fun _t_128 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01110101110000101001000))
(define-fun _t_129 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_128))
(define-fun _t_130 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_125 _t_129))
(define-fun _t_131 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_64))
(define-fun _t_132 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_130 _t_131))
(define-fun _t_135 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b00001110010101100000010))
(define-fun _t_136 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_135))
(define-fun _t_137 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_132 _t_136))
(define-fun _t_138 () Bool (fp.leq _t_137 _t_116))
(assert _t_138)
(define-fun _t_140 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11001001001101110100110))
(define-fun _t_142 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b00101011000000100000110))
(define-fun _t_143 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_142))
(define-fun _t_144 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_143))
(define-fun _t_147 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b11111101111100111011011))
(define-fun _t_148 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_147))
(define-fun _t_149 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_144 _t_148))
(define-fun _t_152 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01010101100000010000011))
(define-fun _t_153 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_152))
(define-fun _t_154 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_149 _t_153))
(define-fun _t_157 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11101010011111101111100))
(define-fun _t_158 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_157))
(define-fun _t_159 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_154 _t_158))
(define-fun _t_161 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00000111001010110000000))
(define-fun _t_162 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_161))
(define-fun _t_163 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_159 _t_162))
(define-fun _t_164 () Bool (fp.leq _t_140 _t_163))
(assert _t_164)
(define-fun _t_167 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00110111110011101101100))
(define-fun _t_170 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11101001111110111110100))
(define-fun _t_171 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_170))
(define-fun _t_172 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_171))
(define-fun _t_174 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11101110100101111000110))
(define-fun _t_175 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_174))
(define-fun _t_176 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_172 _t_175))
(define-fun _t_179 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10100010110100001110011))
(define-fun _t_180 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_179))
(define-fun _t_181 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_176 _t_180))
(define-fun _t_183 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01110000101000111101100))
(define-fun _t_184 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_183))
(define-fun _t_185 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_181 _t_184))
(define-fun _t_187 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b00110111010010111100011))
(define-fun _t_188 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_187))
(define-fun _t_189 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_185 _t_188))
(define-fun _t_190 () Bool (fp.leq _t_189 _t_167))
(assert _t_190)
(define-fun _t_192 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00110000001000001100001))
(define-fun _t_194 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11000111101011100001001))
(define-fun _t_195 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_194))
(define-fun _t_196 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_195))
(define-fun _t_199 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11010001111010111000011))
(define-fun _t_200 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_199))
(define-fun _t_201 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_196 _t_200))
(define-fun _t_204 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11011001100110011001100))
(define-fun _t_205 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_204))
(define-fun _t_206 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_201 _t_205))
(define-fun _t_209 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01000001100010010011100))
(define-fun _t_210 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_209))
(define-fun _t_211 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_206 _t_210))
(define-fun _t_214 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10101100100010110100001))
(define-fun _t_215 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_214))
(define-fun _t_216 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_211 _t_215))
(define-fun _t_217 () Bool (fp.leq _t_192 _t_216))
(assert _t_217)
(define-fun _t_220 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11101101100100010110011))
(define-fun _t_223 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01001011110001101010011))
(define-fun _t_224 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_223))
(define-fun _t_225 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_224))
(define-fun _t_227 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11001000001100010010011))
(define-fun _t_228 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_227))
(define-fun _t_229 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_225 _t_228))
(define-fun _t_232 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10000101000111101011100))
(define-fun _t_233 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_232))
(define-fun _t_234 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_229 _t_233))
(define-fun _t_237 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11000011100101011000000))
(define-fun _t_238 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_237))
(define-fun _t_239 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_234 _t_238))
(define-fun _t_241 () (_ FloatingPoint 8 24) (fp #b0 #b01111001 #b01101000011100101010111))
(define-fun _t_242 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_241))
(define-fun _t_243 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_239 _t_242))
(define-fun _t_244 () Bool (fp.leq _t_243 _t_220))
(assert _t_244)
(define-fun _t_247 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01001101110100101111001))
(define-fun _t_249 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11001100110011001100110))
(define-fun _t_250 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_249))
(define-fun _t_251 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_250))
(define-fun _t_253 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b11000110101001111110111))
(define-fun _t_254 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_253))
(define-fun _t_255 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_251 _t_254))
(define-fun _t_257 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b10110100001110010101100))
(define-fun _t_258 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_257))
(define-fun _t_259 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_255 _t_258))
(define-fun _t_261 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11010110000001000001100))
(define-fun _t_262 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_261))
(define-fun _t_263 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_259 _t_262))
(define-fun _t_266 () (_ FloatingPoint 8 24) (fp #b1 #b01111011 #b10010101100000010000011))
(define-fun _t_267 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_266))
(define-fun _t_268 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_263 _t_267))
(define-fun _t_269 () Bool (fp.leq _t_247 _t_268))
(assert _t_269)
(define-fun _t_271 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010000111001010110000))
(define-fun _t_273 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b11001100110011001100110))
(define-fun _t_274 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_273))
(define-fun _t_275 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_274))
(define-fun _t_278 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11000110101001111111000))
(define-fun _t_279 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_278))
(define-fun _t_280 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_275 _t_279))
(define-fun _t_282 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01010011111101111100110))
(define-fun _t_283 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_282))
(define-fun _t_284 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_280 _t_283))
(define-fun _t_286 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b00010110100001110010101))
(define-fun _t_287 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_286))
(define-fun _t_288 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_284 _t_287))
(define-fun _t_291 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01010011111101111100110))
(define-fun _t_292 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_291))
(define-fun _t_293 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_288 _t_292))
(define-fun _t_294 () Bool (fp.leq _t_271 _t_293))
(assert _t_294)
(check-sat)
(exit)
