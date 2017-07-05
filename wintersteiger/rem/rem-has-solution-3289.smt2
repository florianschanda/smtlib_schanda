(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.7796744274193694312913294197642244398593902587890625p19 {+ 3511341460796177 19 (933062)}
; Y = -1.6528119865554480316660601602052338421344757080078125p-474 {- 2940003819394109 -474 (-3.38848e-143)}
; 1.7796744274193694312913294197642244398593902587890625p19 % -1.6528119865554480316660601602052338421344757080078125p-474 == 1.83789695207615277894319660845212638378143310546875p-475
; [HW: 1.83789695207615277894319660845212638378143310546875p-475] 

; mpf : + 3773552401145036 -475
; mpfd: + 3773552401145036 -475 (1.88397e-143) class: Pos. norm. non-zero
; hwf : + 3773552401145036 -475 (1.88397e-143) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10000010010 #b1100011110011000101111100100011101001011001100010001)))
(assert (= y (fp #b1 #b01000100101 #b1010011100011110101011111011010010110001010000111101)))
(assert (= r (fp #b1 #b01000100100 #x77bcf542ccbae)))
(assert (= (fp.rem x y) r))
(check-sat)
(exit)
