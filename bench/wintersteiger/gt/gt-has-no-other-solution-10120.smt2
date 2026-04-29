(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = -1.820507866402111485371051458059810101985931396484375p-620 {- 3695238921383110 -620 (-4.18403e-187)}
; Y = -1.761647859562402107513889859546907246112823486328125p118 {- 3430157016512770 118 (-5.85408e+035)}
; -1.820507866402111485371051458059810101985931396484375p-620 > -1.761647859562402107513889859546907246112823486328125p118 == 1

; bres: 1
; hwf : 1

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b1 #b00110010011 #b1101001000001100110011011011010001001110110011000110)))
(assert (= y (fp #b1 #b10001110101 #b1100001011111011010110101010011111100011100100000010)))
(assert  (not (= (fp.gt x y) true)))
(check-sat)
(exit)
