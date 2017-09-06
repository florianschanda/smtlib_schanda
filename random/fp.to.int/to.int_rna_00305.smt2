(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNA +normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x47467C8C)))
;; x should be Float32(0x47467C8C [Rational(3252003, 64), 50812.546875])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 50813

(declare-const z Int)
(assert (= z 50813))
(assert (= y z))
