(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.sbv RNA -normal)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x9E71A6EB)))
;; x should be Float32(0x9E71A6EB [Rational(-15836907, 1237940039285380274899124224), -0.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_sbv 32) RNA x)))
;; y should be 0

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000000000000000))
;; z should be 0

(assert (not (= y z)))
(check-sat)
(exit)
