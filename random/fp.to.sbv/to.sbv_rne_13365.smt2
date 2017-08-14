(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNE +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10111001110001101100110)))
;; x should be Float32(0x4ADCE366 [Rational(7238067), 7238067.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNE x)))
;; y should be 7238067

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000011011100111000110110011))
;; z should be 7238067

(assert (not (= y z)))
(check-sat)
(exit)
