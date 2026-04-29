(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.4442218540674645055332803167402744293212890625p-687 {+ 2000597376448064 -687 (2.24919e-207)}
; Y = 1.1477530250884726559235105014522559940814971923828125p-100 {+ 665420468731309 -100 (9.05417e-031)}
; 1.4442218540674645055332803167402744293212890625p-687 < 1.1477530250884726559235105014522559940814971923828125p-100 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b00101010000 #b0111000110111000100001011111111101100011011001000000)))
(assert (= y (fp #b0 #b01110011011 #b0010010111010011001001000110101010100011110110101101)))
(assert (= (fp.lt x y) true))
(check-sat)
(exit)
