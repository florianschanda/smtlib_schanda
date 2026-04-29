(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.3136271002381756378696309184306301176548004150390625p-484 {+ 1412450891765937 -484 (2.62999e-146)}
; 1.3136271002381756378696309184306301176548004150390625p-484 S == 1.146135725050997589136159149347804486751556396484375p-242
; [HW: 1.146135725050997589136159149347804486751556396484375p-242] 

; mpf : + 658136796885190 -242
; mpfd: + 658136796885190 -242 (1.62172e-073) class: Pos. norm. non-zero
; hwf : + 658136796885190 -242 (1.62172e-073) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01000011011 #b0101000001001001110111011001101010101001100010110001)))
(assert (= r (fp #b0 #b01100001101 #b0010010101101001001001101001111111011111000011000110)))
(assert  (not (= (fp.sqrt roundTowardPositive x) r)))
(check-sat)
(exit)
