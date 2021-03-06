(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAD6D643)))
;; x should be Float32(0xCAD6D643 [Rational(-14079555, 2), -7039777.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0639C955)))
;; y should be Float32(0x0639C955 [Rational(12175701, 348449143727040986586495598010130648530944), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RNA x y)))
(assert (not (= result (fp #b1 #b11111111 #b00000000000000000000000))))
(check-sat)
(exit)
