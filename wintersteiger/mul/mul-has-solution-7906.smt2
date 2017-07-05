(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.976974380872295711242259130813181400299072265625p-243 {+ 4399901457646992 -243 (1.39866e-073)}
; Y = 1.0875402668280378382092976607964374125003814697265625p-157 {+ 394246313066665 -157 (5.953e-048)}
; 1.976974380872295711242259130813181400299072265625p-243 * 1.0875402668280378382092976607964374125003814697265625p-157 == 1.075019622843025768332836378249339759349822998046875p-399
; [HW: 1.075019622843025768332836378249339759349822998046875p-399] 

; mpf : + 337858345481326 -399
; mpfd: + 337858345481326 -399 (8.32622e-121) class: Pos. norm. non-zero
; hwf : + 337858345481326 -399 (8.32622e-121) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b01100001100 #b1111101000011010111111100011011011100000010110010000)))
(assert (= y (fp #b0 #b01101100010 #b0001011001101001000010011111011100011100000010101001)))
(assert (= r (fp #b0 #b01001110000 #b0001001100110100011111000110101010101011010001101110)))
(assert (= (fp.mul roundNearestTiesToEven x y) r))
(check-sat)
(exit)
