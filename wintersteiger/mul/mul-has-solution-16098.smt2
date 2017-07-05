(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to positive
; Precision: double (11/53)
; X = 1.01341946545163263948552412330172955989837646484375p755 {+ 60435899607484 755 (1.9206e+227)}
; Y = 1.7660287579509976740865795363788492977619171142578125p-452 {+ 3449886828863197 -452 (1.51859e-136)}
; 1.01341946545163263948552412330172955989837646484375p755 * 1.7660287579509976740865795363788492977619171142578125p-452 == 1.789727919854910975772099845926277339458465576171875p303
; [HW: 1.789727919854910975772099845926277339458465576171875p303] 

; mpf : + 3556618365582654 303
; mpfd: + 3556618365582654 303 (2.91659e+091) class: Pos. norm. non-zero
; hwf : + 3556618365582654 303 (2.91659e+091) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11011110010 #b0000001101101111011101010100010100111110100110111100)))
(assert (= y (fp #b0 #b01000111011 #b1100010000011010011101011110111100110001111011011101)))
(assert (= r (fp #b0 #b10100101110 #b1100101000101011100110111110010010000011110100111110)))
(assert (= (fp.mul roundTowardPositive x y) r))
(check-sat)
(exit)
