(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x767F9929)))
;; x should be Float32(0x767F9929 [Rational(1296037261670315269226544754589696), 1296037261670315269226544754589696.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 32400932489962694378479948611613207.0 25.0))))
;; w should be Float32(0x767F9929 [Rational(1296037261670315269226544754589696), 1296037261670315269226544754589696.000000])

(assert (= x w))
(check-sat)
(exit)
