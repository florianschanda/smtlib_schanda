(set-info :smt-lib-version 2.6)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6781856702008879356213810751796700060367584228515625 890 {+ 3054276731604729 890 (1.38528e+268)}
; 1.6781856702008879356213810751796700060367584228515625 890 I == 1.6781856702008879356213810751796700060367584228515625 890
; [HW: 1.6781856702008879356213810751796700060367584228515625 890] 

; mpf : + 3054276731604729 890
; mpfd: + 3054276731604729 890 (1.38528e+268) class: Pos. norm. non-zero
; hwf : + 3054276731604729 890 (1.38528e+268) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101111001 #b1010110110011101100100110111101000100000111011111001)))
(assert (= r (fp #b0 #b11101111001 #b1010110110011101100100110111101000100000111011111001)))
(assert (= (fp.roundToIntegral roundNearestTiesToEven x) r))
(check-sat)
(exit)
