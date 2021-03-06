(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00001001 #b10001000011110100110001)))
;; x should be Float32(0x04C43D31 [Rational(12860721, 2787593149816327892691964784081045188247552), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x807FFFFF)))
;; y should be Float32(0x807FFFFF [Rational(-8388607, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xCAD83A79)))
;; z should be Float32(0xCAD83A79 [Rational(-14170745, 2), -7085372.500000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result (fp #b1 #b10010101 #b10110000011101001111001))))
(check-sat)
(exit)
