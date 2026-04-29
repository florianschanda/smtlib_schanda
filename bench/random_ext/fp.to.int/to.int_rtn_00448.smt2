(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTN -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xD5170326)))
;; x should be Float32(0xD5170326 [Rational(-10377486139392), -10377486139392.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -10377486139392

(declare-const z Int)
(assert (= z (- 10377486139392)))
(assert (not (= y z)))
