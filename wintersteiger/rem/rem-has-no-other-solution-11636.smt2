(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = -1.2141388916538768949493487525614909827709197998046875p29 {- 964395832657931 29 (-6.51836e+008)}
; Y = -1.1446580054826147598845409447676502168178558349609375p-644 {- 651481739587663 -644 (-1.56805e-194)}
; -1.2141388916538768949493487525614909827709197998046875p29 % -1.1446580054826147598845409447676502168178558349609375p-644 == -1.99252744985060648019725704216398298740386962890625p-645
; [HW: -1.99252744985060648019725704216398298740386962890625p-645] 

; mpf : - 4469946253302180 -645
; mpfd: - 4469946253302180 -645 (-1.36476e-194) class: Neg. norm. non-zero
; hwf : - 4469946253302180 -645 (-1.36476e-194) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b10000011100 #b0011011011010001110011100111000001110100100000001011)))
(assert (= y (fp #b1 #b00101111011 #b0010010100001000010011101001101010100111000001001111)))
(assert (= r (fp #b0 #b00101111000 #x2fe9572f41be8)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
