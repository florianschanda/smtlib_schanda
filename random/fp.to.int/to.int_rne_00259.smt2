(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RNE -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC9F55E74)))
;; x should be Float32(0xC9F55E74 [Rational(-4020125, 2), -2010062.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -2010062

(declare-const z Int)
(assert (= z (- 2010062)))
(assert (not (= y z)))
