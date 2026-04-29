(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.091234507847408163883073939359746873378753662109375p515 {+ 410883695544918 515 (1.17049e+155)}
; 1.091234507847408163883073939359746873378753662109375p515 S == 1.47731818363371392166527584777213633060455322265625p257
; [HW: 1.47731818363371392166527584777213633060455322265625p257] 

; mpf : + 2149649993949956 257
; mpfd: + 2149649993949956 257 (3.42124e+077) class: Pos. norm. non-zero
; hwf : + 2149649993949956 257 (3.42124e+077) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11000000010 #b0001011101011011001001010000101101111000101001010110)))
(assert (= r (fp #b0 #b10100000000 #b0111101000110001100001100100010001111110001100000100)))
(assert  (not (= (fp.sqrt roundTowardNegative x) r)))
(check-sat)
(exit)
