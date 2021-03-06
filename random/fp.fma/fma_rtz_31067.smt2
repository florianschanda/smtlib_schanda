(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAD8793B)))
;; x should be Float32(0xCAD8793B [Rational(-14186811, 2), -7093405.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b10010101 #b00000010011011101101101)))
;; y should be Float32(0x4A81376D [Rational(8468333, 2), 4234166.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x4A6C233A)))
;; z should be Float32(0x4A6C233A [Rational(7737757, 2), 3868878.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #xD5DA87E8))))
(check-sat)
(exit)
