(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.6876069721584487925980511136003769934177398681640625p-845 {+ 3096706503590145 -845 (7.19325e-255)}
; 1.6876069721584487925980511136003769934177398681640625p-845 | == 1.6876069721584487925980511136003769934177398681640625p-845
; [HW: 1.6876069721584487925980511136003769934177398681640625p-845] 

; mpf : + 3096706503590145 -845
; mpfd: + 3096706503590145 -845 (7.19325e-255) class: Pos. norm. non-zero
; hwf : + 3096706503590145 -845 (7.19325e-255) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010110010 #b1011000000000111000000101011000111101100000100000001)))
(assert (= r (fp #b0 #b00010110010 #b1011000000000111000000101011000111101100000100000001)))
(assert  (not (= (fp.abs x) r)))
(check-sat)
(exit)
