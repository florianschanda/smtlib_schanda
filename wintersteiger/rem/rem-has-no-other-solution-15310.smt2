(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.913346409445892959411139599978923797607421875p636 {+ 4113346549240704 636 (5.45596e+191)}
; Y = -1.07108164632177160768833346082828938961029052734375p-198 {- 320123275887612 -198 (-2.66614e-060)}
; 1.913346409445892959411139599978923797607421875p636 % -1.07108164632177160768833346082828938961029052734375p-198 == 1.64106870124641091024386696517467498779296875p-200
; [HW: 1.64106870124641091024386696517467498779296875p-200] 

; mpf : + 2887116764052224 -200
; mpfd: + 2887116764052224 -200 (1.02124e-060) class: Pos. norm. non-zero
; hwf : + 2887116764052224 -200 (1.02124e-060) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11001111011 #b1110100111010001000100011111111001111101001110000000)))
(assert (= y (fp #b1 #b01100111001 #b0001001000110010011010000010001001001100001111111100)))
(assert (= r (fp #b0 #b01100110111 #xa41d141257b00)))
(assert  (not (= (fp.rem x y) r)))
(check-sat)
(exit)
