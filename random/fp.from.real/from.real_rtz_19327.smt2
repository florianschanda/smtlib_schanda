(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x05949CBA)))
;; x should be Float32(0x05949CBA [Rational(4869725, 348449143727040986586495598010130648530944), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 48697257319.0 3484491437270409865864955980101306485309440000.0))))
;; w should be Float32(0x05949CBB [Rational(9739451, 696898287454081973172991196020261297061888), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
