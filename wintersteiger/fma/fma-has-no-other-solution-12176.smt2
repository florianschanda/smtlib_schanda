(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: to negative
; Precision: double (11/53)
; X = 1.56377201218567041252072158385999500751495361328125p262 {+ 2539003424001300 262 (1.15886e+079)}
; Y = -1.876973340088406327907932791276834905147552490234375p-712 {- 3949536807636006 -712 (-8.71167e-215)}
; Z = 1.8765919045138874654554683729656971991062164306640625p-133 {+ 3947818974524737 -133 (1.72338e-040)}
; 1.56377201218567041252072158385999500751495361328125p262 x -1.876973340088406327907932791276834905147552490234375p-712 1.8765919045138874654554683729656971991062164306640625p-133 == 1.8765919045138872434108634479343891143798828125p-133
; [HW: 1.8765919045138872434108634479343891143798828125p-133] 

; mpf : + 3947818974524736 -133
; mpfd: + 3947818974524736 -133 (1.72338e-040) class: Pos. norm. non-zero
; hwf : + 3947818974524736 -133 (1.72338e-040) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status unsat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun z () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b10100000101 #b1001000001010011010111001101001010111100110100010100)))
(assert (= y (fp #b1 #b00100110111 #b1110000010000001010100110010011100100100110000100110)))
(assert (= z (fp #b0 #b01101111010 #b1110000001101000010100111011100111010011010101000001)))
(assert (= r (fp #b0 #b01101111010 #b1110000001101000010100111011100111010011010101000000)))
(assert  (not (= (fp.fma roundTowardNegative x y z) r)))
(check-sat)
(exit)
