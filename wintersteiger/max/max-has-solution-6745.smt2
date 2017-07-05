(set-info :smt-lib-version 2.6)
(set-info :category "crafted")
(set-info :source |Christoph M. Wintersteiger (cwinter@microsoft.com). Randomly generated floating-point testcases.|)
; Rounding mode: nearest, ties to even
; Precision: double (11/53)
; X = 1.2770263796052281346504742032266221940517425537109375p837 {+ 1247615899961903 837 (1.17032e+252)}
; Y = -1.153250381167168381324472647975198924541473388671875p-989 {- 690178359518846 -989 (-2.20424e-298)}
; 1.2770263796052281346504742032266221940517425537109375p837 M -1.153250381167168381324472647975198924541473388671875p-989 == 1.2770263796052281346504742032266221940517425537109375p837
; [HW: 1.2770263796052281346504742032266221940517425537109375p837] 

; mpf : + 1247615899961903 837
; mpfd: + 1247615899961903 837 (1.17032e+252) class: Pos. norm. non-zero
; hwf : + 1247615899961903 837 (1.17032e+252) class: Pos. norm. non-zero

(set-logic QF_FP)
(set-info :status sat)
(define-sort FPN () (_ FloatingPoint 11 53))
(declare-fun x () FPN)
(declare-fun y () FPN)
(declare-fun r () FPN)
(assert (= x (fp #b0 #b11101000100 #b0100011011101011001100110110100010001000101000101111)))
(assert (= y (fp #b1 #b00000100010 #b0010011100111011011010101011111100110110011001111110)))
(assert (= r (fp #b0 #b11101000100 #b0100011011101011001100110110100010001000101000101111)))
(assert (= (fp.max x y) r))
(check-sat)
(exit)
