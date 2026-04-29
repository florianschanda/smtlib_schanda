(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; RNA conversion of Float32(-normal) -> Float64
(declare-const x Float32)
(assert (= x (fp #b1 #b10001001 #b01101010110101110111010)))
;; x should be Float32(0xC4B56BBA [Rational(-5944797, 4096), -1451.366455])

(declare-const y Float64)
(assert (= y ((_ to_fp 11 53) RNA x)))
;; y should be Float64(0xC096AD7740000000 [Rational(-5944797, 4096), -1451.366455])

(declare-const z Float64)
(assert (= z ((_ to_fp 11 53) #xC096AD7740000000)))
;; z should be y

(assert (not (= y z)))
(check-sat)
(exit)
