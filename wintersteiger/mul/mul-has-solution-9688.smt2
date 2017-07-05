(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = -1.132617424242300163683694336214102804660797119140625p604 {- 597255782400458 604 (-7.5197e+181)}
; Y = -1.51655422459856925598842281033284962177276611328125p181 {- 2326353413418772 181 (-4.64823e+054)}
; -1.132617424242300163683694336214102804660797119140625p604 * -1.51655422459856925598842281033284962177276611328125p181 == 1.717675739588610195340834252419881522655487060546875p785
; [HW: 1.717675739588610195340834252419881522655487060546875p785] 

; mpf : + 3232124193384110 785
; mpfd: + 3232124193384110 785 (3.49533e+236) class: Pos. norm. non-zero
; hwf : + 3232124193384110 785 (3.49533e+236) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b1 #b11001011011 #b0010000111110011001101110010110000000000000111001010)))
(assert (= y (fp #b1 #b10010110100 #b1000010000111100111001011100110101000010111100010100)))
(assert (= r (fp #b0 #b11100010000 #b1011011110111001100110001110011010101010011010101110)))
(assert (= (fp.mul roundTowardNegative x y) r))
(check-sat)
(exit)
