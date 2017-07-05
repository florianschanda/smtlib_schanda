(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to zero
; Precision: double (11/53)
; X = 1.654506808195725486854144037351943552494049072265625p968 {+ 2947636617501722 968 (4.12766e+291)}
; Y = 1.5674214720520496246791708472301252186298370361328125p-967 {+ 2555439130095629 -967 (1.25655e-291)}
; 1.654506808195725486854144037351943552494049072265625p968 < 1.5674214720520496246791708472301252186298370361328125p-967 == 0

; bres: 0
; hwf : 0

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(assert (= x (fp #b0 #b11111000111 #b1010011110001101110000100001100000110101110000011010)))
(assert (= y (fp #b0 #b00000111000 #b1001000101000010100010001001100110000011000000001101)))
(assert  (not (= (fp.lt x y) false)))
(check-sat)
(exit)
