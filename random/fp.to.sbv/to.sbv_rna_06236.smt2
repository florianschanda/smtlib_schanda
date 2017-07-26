(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -normal)
(declare-const x Float32)
(assert (= x (fp #b1 #b00111100 #b11100011010011011101011)))
;; x should be Float32(0x9E71A6EB [Rational(-15836907, 1237940039285380274899124224), -0.000000])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_sbv 64) RNA x)))
;; y should be 0

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000000000000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
