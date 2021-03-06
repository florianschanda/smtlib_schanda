(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xB6AF36F2)))
;; x should be Float32(0xB6AF36F2 [Rational(-5741433, 1099511627776), -0.000005])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC946C338)))
;; y should be Float32(0xC946C338 [Rational(-1628263, 2), -814131.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x007FFFFF)))
;; z should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x40880A1C))))
(check-sat)
(exit)
