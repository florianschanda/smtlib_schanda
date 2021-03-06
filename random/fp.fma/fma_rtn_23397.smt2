(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5208B43F)))
;; x should be Float32(0x5208B43F [Rational(146784894976), 146784894976.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00000000000000000000001)))
;; y should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10110010 #b01001110010111011111010)))
;; z should be Float32(0x59272EFA [Rational(2941123274211328), 2941123274211328.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b0 #b10110010 #b01001110010111011111001)))
(check-sat)
(exit)
