(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00101011 #b10111001000010011000110)))
;; x should be Float32(0x95DC84C6 [Rational(-7225955, 81129638414606681695789005144064), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000001 #b00000000000000000000000)))
;; y should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (not (= result ((_ to_fp 8 24) #x54DC84C6))))
(check-sat)
(exit)
