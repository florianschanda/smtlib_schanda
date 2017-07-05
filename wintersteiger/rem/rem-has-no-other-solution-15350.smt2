(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.441763678676841298198496588156558573246002197265625p-608 {+ 1989526738674842 -608 (1.35724e-183)}
; Y = -1.342178420958730189482821515412069857120513916015625p809 {- 1541034609123962 809 (-4.58223e+243)}
; 1.441763678676841298198496588156558573246002197265625p-608 % -1.342178420958730189482821515412069857120513916015625p809 == 1.441763678676841298198496588156558573246002197265625p-608
; [HW: 1.441763678676841298198496588156558573246002197265625p-608] 

; mpf : + 1989526738674842 -608
; mpfd: + 1989526738674842 -608 (1.35724e-183) class: Pos. norm. non-zero
; hwf : + 1989526738674842 -608 (1.35724e-183) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00110011111 #b0111000100010111011011001010100001111010010010011010)))
(assert (= y (fp #b1 #b11100101000 #b0101011110011001000000010100011101101010001001111010)))
(assert (= r (fp #b0 #b00110011111 #x71176ca87a49a)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
