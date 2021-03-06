(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x2A0989AD)))
;; x should be Float32(0x2A0989AD [Rational(9013677, 73786976294838206464), 0.000000])

(declare-const y Float32)
(assert (= y (_ -oo 8 24)))
;; y should be Float32(-oo)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCABB0BF7)))
;; z should be Float32(0xCABB0BF7 [Rational(-12258295, 2), -6129147.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (= result (_ -oo 8 24)))
(check-sat)
(exit)
