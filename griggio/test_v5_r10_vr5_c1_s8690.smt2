(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :category "crafted")
(set-info :source |Alberto Griggio <griggio@fbk.eu>. These benchmarks were used for the evaluation in the following paper: L. Haller, A. Griggio, M. Brain, D. Kroening: Deciding floating-point logic with systematic abstraction. FMCAD 2012. Real-numbered literals have been automatically translated by MathSAT|)
(set-info :status unknown)
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
(define-fun _t_37 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10010001111010111000011))
(define-fun _t_39 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01011011001000101101000))
(define-fun _t_40 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_39))
(define-fun _t_41 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_40))
(define-fun _t_44 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11100110111010010111100))
(define-fun _t_45 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_44))
(define-fun _t_46 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_41 _t_45))
(define-fun _t_48 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b11000111001010110000001))
(define-fun _t_49 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_48))
(define-fun _t_50 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_46 _t_49))
(define-fun _t_53 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00100011010100111111100))
(define-fun _t_54 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_53))
(define-fun _t_55 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_50 _t_54))
(define-fun _t_58 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11011111001110110110001))
(define-fun _t_59 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_58))
(define-fun _t_60 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_55 _t_59))
(define-fun _t_61 () Bool (fp.leq _t_37 _t_60))
(assert _t_61)
(define-fun _t_64 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10101110000101000111100))
(define-fun _t_67 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01010000011000100100110))
(define-fun _t_68 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_67))
(define-fun _t_69 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_68))
(define-fun _t_72 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01011000000100000110000))
(define-fun _t_73 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_72))
(define-fun _t_74 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_69 _t_73))
(define-fun _t_76 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01000100000110001001001))
(define-fun _t_77 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_76))
(define-fun _t_78 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_74 _t_77))
(define-fun _t_80 () (_ FloatingPoint 8 24) (fp #b0 #b01111011 #b11000010100011110101101))
(define-fun _t_81 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_80))
(define-fun _t_82 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_78 _t_81))
(define-fun _t_84 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b10110000001000001100001))
(define-fun _t_85 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_84))
(define-fun _t_86 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_82 _t_85))
(define-fun _t_87 () Bool (fp.leq _t_64 _t_86))
(assert _t_87)
(define-fun _t_89 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010011111101111100110))
(define-fun _t_92 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01110010001011010000110))
(define-fun _t_93 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_92))
(define-fun _t_94 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_93))
(define-fun _t_97 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01011010000111001010101))
(define-fun _t_98 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_97))
(define-fun _t_99 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_94 _t_98))
(define-fun _t_101 () (_ FloatingPoint 8 24) (fp #b0 #b01111010 #b01000111101011100001001))
(define-fun _t_102 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_101))
(define-fun _t_103 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_99 _t_102))
(define-fun _t_106 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b11111101111100111011011))
(define-fun _t_107 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_106))
(define-fun _t_108 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_103 _t_107))
(define-fun _t_111 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11110110110010001011001))
(define-fun _t_112 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_111))
(define-fun _t_113 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_108 _t_112))
(define-fun _t_114 () Bool (fp.leq _t_89 _t_113))
(assert _t_114)
(define-fun _t_117 () (_ FloatingPoint 8 24) (fp #b1 #b01111010 #b00101111000110101001111))
(define-fun _t_120 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01000100100110111010011))
(define-fun _t_121 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_120))
(define-fun _t_122 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_121))
(define-fun _t_125 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00101100100010110100001))
(define-fun _t_126 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_125))
(define-fun _t_127 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_122 _t_126))
(define-fun _t_129 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01110011101101100100011))
(define-fun _t_130 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_129))
(define-fun _t_131 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_127 _t_130))
(define-fun _t_133 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010010011011101001100))
(define-fun _t_134 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_133))
(define-fun _t_135 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_131 _t_134))
(define-fun _t_138 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b01001101110100101111001))
(define-fun _t_139 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_138))
(define-fun _t_140 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_135 _t_139))
(define-fun _t_141 () Bool (fp.leq _t_117 _t_140))
(assert _t_141)
(define-fun _t_144 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01000000000000000000000))
(define-fun _t_147 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10100110111010010111100))
(define-fun _t_148 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_147))
(define-fun _t_149 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_148))
(define-fun _t_151 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10010110000001000001100))
(define-fun _t_152 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_151))
(define-fun _t_153 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_149 _t_152))
(define-fun _t_156 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00100001110010101100000))
(define-fun _t_157 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_156))
(define-fun _t_158 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_153 _t_157))
(define-fun _t_161 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11101111100111011011001))
(define-fun _t_162 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_161))
(define-fun _t_163 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_158 _t_162))
(define-fun _t_165 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01000000100000110001001))
(define-fun _t_166 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_165))
(define-fun _t_167 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_163 _t_166))
(define-fun _t_168 () Bool (fp.leq _t_167 _t_144))
(assert _t_168)
(define-fun _t_171 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10100110111010010111100))
(define-fun _t_174 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10111101111100111011011))
(define-fun _t_175 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_174))
(define-fun _t_176 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_175))
(define-fun _t_179 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b00111100011010100111110))
(define-fun _t_180 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_179))
(define-fun _t_181 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_176 _t_180))
(define-fun _t_184 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b00111111011111001110110))
(define-fun _t_185 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_184))
(define-fun _t_186 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_181 _t_185))
(define-fun _t_189 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11111101011100001010001))
(define-fun _t_190 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_189))
(define-fun _t_191 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_186 _t_190))
(define-fun _t_193 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01100011010100111111100))
(define-fun _t_194 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_193))
(define-fun _t_195 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_191 _t_194))
(define-fun _t_196 () Bool (fp.leq _t_171 _t_195))
(assert _t_196)
(define-fun _t_199 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b10111100011010100111110))
(define-fun _t_202 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10000000000000000000000))
(define-fun _t_203 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_202))
(define-fun _t_204 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_203))
(define-fun _t_206 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b00111001110110110010001))
(define-fun _t_207 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_206))
(define-fun _t_208 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_204 _t_207))
(define-fun _t_211 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b10011001100110011001101))
(define-fun _t_212 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_211))
(define-fun _t_213 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_208 _t_212))
(define-fun _t_215 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b01110111110011101101100))
(define-fun _t_216 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_215))
(define-fun _t_217 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_213 _t_216))
(define-fun _t_220 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10100001110010101100000))
(define-fun _t_221 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_220))
(define-fun _t_222 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_217 _t_221))
(define-fun _t_223 () Bool (fp.leq _t_222 _t_199))
(assert _t_223)
(define-fun _t_226 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01111011111001110110110))
(define-fun _t_229 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10000111001010110000000))
(define-fun _t_230 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_229))
(define-fun _t_231 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_230))
(define-fun _t_234 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b11110000101000111101100))
(define-fun _t_235 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_234))
(define-fun _t_236 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_231 _t_235))
(define-fun _t_238 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b01100100010110100001101))
(define-fun _t_239 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_238))
(define-fun _t_240 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_236 _t_239))
(define-fun _t_243 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01011011101001011110001))
(define-fun _t_244 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_243))
(define-fun _t_245 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_240 _t_244))
(define-fun _t_247 () (_ FloatingPoint 8 24) (fp #b0 #b01111101 #b00001000001100010010011))
(define-fun _t_248 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_247))
(define-fun _t_249 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_245 _t_248))
(define-fun _t_250 () Bool (fp.leq _t_249 _t_226))
(assert _t_250)
(define-fun _t_253 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11011101101100100010110))
(define-fun _t_255 () (_ FloatingPoint 8 24) (fp #b0 #b01111110 #b10011110001101010100000))
(define-fun _t_256 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_255))
(define-fun _t_257 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_256))
(define-fun _t_260 () (_ FloatingPoint 8 24) (fp #b1 #b01110101 #b00000110001001001101111))
(define-fun _t_261 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_260))
(define-fun _t_262 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_257 _t_261))
(define-fun _t_265 () (_ FloatingPoint 8 24) (fp #b1 #b01111010 #b01111000110101001111111))
(define-fun _t_266 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_265))
(define-fun _t_267 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_262 _t_266))
(define-fun _t_270 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b01000100100110111010011))
(define-fun _t_271 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_270))
(define-fun _t_272 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_267 _t_271))
(define-fun _t_275 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10001000001100010010011))
(define-fun _t_276 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_275))
(define-fun _t_277 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_272 _t_276))
(define-fun _t_278 () Bool (fp.leq _t_277 _t_253))
(assert _t_278)
(define-fun _t_281 () (_ FloatingPoint 8 24) (fp #b1 #b01111101 #b10001111010111000010011))
(define-fun _t_284 () (_ FloatingPoint 8 24) (fp #b1 #b01111100 #b01100000010000011000100))
(define-fun _t_285 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_13 _t_284))
(define-fun _t_286 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_34 _t_285))
(define-fun _t_289 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b10100110011001100110011))
(define-fun _t_290 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_17 _t_289))
(define-fun _t_291 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_286 _t_290))
(define-fun _t_294 () (_ FloatingPoint 8 24) (fp #b1 #b01111110 #b11110010001011010000110))
(define-fun _t_295 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_21 _t_294))
(define-fun _t_296 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_291 _t_295))
(define-fun _t_297 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_25 _t_39))
(define-fun _t_298 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_296 _t_297))
(define-fun _t_300 () (_ FloatingPoint 8 24) (fp #b0 #b01111100 #b11111001110110110010000))
(define-fun _t_301 () (_ FloatingPoint 8 24) (fp.mul _t_3 _t_29 _t_300))
(define-fun _t_302 () (_ FloatingPoint 8 24) (fp.add _t_3 _t_298 _t_301))
(define-fun _t_303 () Bool (fp.leq _t_302 _t_281))
(assert _t_303)
(check-sat)
(exit)
