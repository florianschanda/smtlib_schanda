(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y (fp #b1 #b10010001 #b00011101000100010010000)))
;; y should be Float32(0xC88E8890 [Rational(-583817, 2), -291908.500000])

(declare-const result Float32)
(assert (= result (fp.add RTN x y)))
(assert (= result ((_ to_fp 8 24) #x7F800000)))
(check-sat)
(exit)
