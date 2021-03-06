(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10111011 #b11111000111110111110011)))
;; x should be Float32(0xDDFC7DF3 [Rational(-2274245656371527680), -2274245656371527680.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000000)))
;; y should be Float32(+zero)

(declare-const z Float32)
(assert (= z (_ +zero 8 24)))
;; z should be Float32(+zero)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (= result (_ +zero 8 24)))
(check-sat)
(exit)
