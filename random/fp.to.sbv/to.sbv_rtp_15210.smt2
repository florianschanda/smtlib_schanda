(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RTP -halfpoint)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCA8051F4)))
;; x should be Float32(0xCA8051F4 [Rational(-4204794), -4204794.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RTP x)))
;; y should be -4204794

(declare-const z (_ BitVec 64))
(assert (= z #b1111111111111111111111111111111111111111101111111101011100000110))
;; z should be -4204794

(assert (not (= y z)))
(check-sat)
(exit)
