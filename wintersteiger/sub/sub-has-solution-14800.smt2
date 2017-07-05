(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.1595478570553392483333254858735017478466033935546875p183 {+ 718539669582187 183 (1.4216e+055)}
; Y = -1.2194068657403860367338666037539951503276824951171875p946 {- 988120678790931 946 (-7.25311e+284)}
; 1.1595478570553392483333254858735017478466033935546875p183 - -1.2194068657403860367338666037539951503276824951171875p946 == 1.2194068657403860367338666037539951503276824951171875p946
; [HW: 1.2194068657403860367338666037539951503276824951171875p946] 

; mpf : + 988120678790931 946
; mpfd: + 988120678790931 946 (7.25311e+284) class: Pos. norm. non-zero
; hwf : + 988120678790931 946 (7.25311e+284) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010110110 #b0010100011011000001000001101110000110011000101101011)))
(assert (= y (fp #b1 #b11110110001 #b0011100000101011000011000110000011011111011100010011)))
(assert (= r (fp #b0 #b11110110001 #b0011100000101011000011000110000011011111011100010011)))
(assert (= (fp.sub roundTowardZero x y) r))
(check-sat)
(exit)
