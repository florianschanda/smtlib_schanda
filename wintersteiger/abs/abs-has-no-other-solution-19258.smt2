(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.678824328740336380150210970896296203136444091796875p160 {+ 3057152993965006 160 (2.4536e+048)}
; 1.678824328740336380150210970896296203136444091796875p160 | == 1.678824328740336380150210970896296203136444091796875p160
; [HW: 1.678824328740336380150210970896296203136444091796875p160] 

; mpf : + 3057152993965006 160
; mpfd: + 3057152993965006 160 (2.4536e+048) class: Pos. norm. non-zero
; hwf : + 3057152993965006 160 (2.4536e+048) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10010011111 #b1010110111000111011011100110001110101011001111001110)))
(assert (= r (fp #b0 #b10010011111 #b1010110111000111011011100110001110101011001111001110)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
