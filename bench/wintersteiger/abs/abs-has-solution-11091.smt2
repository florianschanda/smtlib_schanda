(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.9319388115922588866624209913425147533416748046875p646 {+ 4197079284619000 646 (5.64119e+194)}
; 1.9319388115922588866624209913425147533416748046875p646 | == 1.9319388115922588866624209913425147533416748046875p646
; [HW: 1.9319388115922588866624209913425147533416748046875p646] 

; mpf : + 4197079284619000 646
; mpfd: + 4197079284619000 646 (5.64119e+194) class: Pos. norm. non-zero
; hwf : + 4197079284619000 646 (5.64119e+194) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11010000101 #b1110111010010011100010101011110110101001011011111000)))
(assert (= r (fp #b0 #b11010000101 #b1110111010010011100010101011110110101001011011111000)))
(assert (= (fp.abs x) r))
(check-sat)
(exit)
