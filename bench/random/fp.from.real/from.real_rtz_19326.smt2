(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x05949CBA)))
;; x should be Float32(0x05949CBA [Rational(4869725, 348449143727040986586495598010130648530944), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 7184304919.0 696898287454081973172991196020261297061888000.0)))))
;; w should be Float32(0x855B3F61 [Rational(-14368609, 1393796574908163946345982392040522594123776), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
