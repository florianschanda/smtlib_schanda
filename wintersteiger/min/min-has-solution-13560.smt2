(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.3514531152647448752901482293964363634586334228515625p-874 {+ 1582804118944505 -874 (1.07296e-263)}
; Y = -1.2082454985067687669442193509894423186779022216796875p490 {- 937854349476667 490 (-3.86236e+147)}
; 1.3514531152647448752901482293964363634586334228515625p-874 m -1.2082454985067687669442193509894423186779022216796875p490 == -1.2082454985067687669442193509894423186779022216796875p490
; [HW: -1.2082454985067687669442193509894423186779022216796875p490] 

; mpf : - 937854349476667 490
; mpfd: - 937854349476667 490 (-3.86236e+147) class: Neg. norm. non-zero
; hwf : - 937854349476667 490 (-3.86236e+147) class: Neg. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b00010010101 #b0101100111111000110101001101010000100011101011111001)))
(assert (= y (fp #b1 #b10111101001 #b0011010101001111100100111011010110100000001100111011)))
(assert (= r (fp #b1 #b10111101001 #b0011010101001111100100111011010110100000001100111011)))
(assert (= (fp.min x y) r))
(check-sat)
(exit)
