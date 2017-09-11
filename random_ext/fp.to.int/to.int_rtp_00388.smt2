(set-info :smt-lib-version 2.6)
(set-logic QF_FPLIA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.int RTP -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b11100000 #b01011011101011010100110)))
;; x should be Float32(0xF02DD6A6 [Rational(-215201602949305535575518871552), -215201602949305535575518871552.000000])

(declare-const y Int)
(assert (= y (fp.to_int x)))
;; y should be -215201602949305535575518871552

(declare-const z Int)
(assert (= z (- 215201602949305535575518871552)))
(assert (not (= y z)))
