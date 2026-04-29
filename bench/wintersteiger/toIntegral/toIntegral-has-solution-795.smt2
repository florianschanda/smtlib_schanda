(set-info :smt-lib-version 2.6)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.542083438331445677249575965106487274169921875 504 {+ 2441326770873216 504 (8.07655e+151)}
; 1.542083438331445677249575965106487274169921875 504 I == 1.542083438331445677249575965106487274169921875 504
; [HW: 1.542083438331445677249575965106487274169921875 504] 

; mpf : + 2441326770873216 504
; mpfd: + 2441326770873216 504 (8.07655e+151) class: Pos. norm. non-zero
; hwf : + 2441326770873216 504 (8.07655e+151) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
(set-info :category "crafted")
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10111110111 #b1000101011000101111110101110111101010110001110000000)))
(assert (= r (fp #b0 #b10111110111 #b1000101011000101111110101110111101010110001110000000)))
(assert (= (fp.roundToIntegral roundTowardPositive x) r))
(check-sat)
(exit)
