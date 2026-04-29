(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTP +halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x49DBD984)))
;; x should be Float32(0x49DBD984 [Rational(3602017, 2), 1801008.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be 1801009

(declare-const z Int)
(assert (= z 1801009))
(assert (not (= y z)))
