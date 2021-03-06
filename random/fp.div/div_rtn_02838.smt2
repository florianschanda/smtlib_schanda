(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11011011 #b01111111100000110110111)))
;; x should be Float32(0x6DBFC1B7 [Rational(7418227969016112087778197504), 7418227969016112087778197504.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x7F800000)))
;; y should be Float32(+oo)

(declare-const result Float32)
(assert (= result (fp.div RTN x y)))
(assert (= result (_ +zero 8 24)))
(check-sat)
(exit)
