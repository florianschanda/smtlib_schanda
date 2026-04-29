(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b00011101 #b11011010010011110110111)))
;; x should be Float32(0x0EED27B7 [Rational(15542199, 2658455991569831745807614120560689152), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 4131825300449604328847985095043878164704164439.0 706738825911353731833319000297167406330993558750247583248642480517047910400.0))))
;; w should be Float32(0x0EED27B7 [Rational(15542199, 2658455991569831745807614120560689152), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
