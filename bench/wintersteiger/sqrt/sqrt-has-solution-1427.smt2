(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.4302108174659122763472396400175057351589202880859375p-211 {+ 1937497277230239 -211 (4.34581e-064)}
; 1.4302108174659122763472396400175057351589202880859375p-211 S == 1.691278106915543588684158748947083950042724609375p-106
; [HW: 1.691278106915543588684158748947083950042724609375p-106] 

; mpf : + 3113239824714224 -106
; mpfd: + 3113239824714224 -106 (2.08466e-032) class: Pos. norm. non-zero
; hwf : + 3113239824714224 -106 (2.08466e-032) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100101100 #b0110111000100010010010111100111101100110110010011111)))
(assert (= r (fp #b0 #b01110010101 #b1011000011110111100110100001110110100100100111110000)))
(assert (= (fp.sqrt roundNearestTiesToEven x) r))
(check-sat)
(exit)
