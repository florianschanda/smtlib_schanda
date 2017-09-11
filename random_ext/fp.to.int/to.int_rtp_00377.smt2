(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTP -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAB6C62B)))
;; x should be Float32(0xCAB6C62B [Rational(-11978283, 2), -5989141.500000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -5989141

(declare-const z Int)
(assert (= z (- 5989141)))
(assert (not (= y z)))
