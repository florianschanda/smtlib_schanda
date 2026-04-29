(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; (fp.to.int RNE -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC3916099)))
;; x should be Float32(0xC3916099 [Rational(-9527449, 32768), -290.754669])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -291

(declare-const z Int)
(assert (= z (- 291)))
(assert (= y z))
