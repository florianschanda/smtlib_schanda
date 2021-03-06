(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFF800000)))
;; x should be Float32(-oo)

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xD7C85207)))
;; y should be Float32(0xD7C85207 [Rational(-440509260627968), -440509260627968.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b01111101 #b01000101110100000000100)))
;; z should be Float32(0x3EA2E804 [Rational(2669057, 8388608), 0.318176])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (_ +oo 8 24)))
(check-sat)
(exit)
