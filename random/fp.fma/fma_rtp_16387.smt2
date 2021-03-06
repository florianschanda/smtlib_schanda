(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111110 #b01110101110011100011011)))
;; x should be Float32(0x7F3AE71B [Rational(248436375415375196137400104439978655744), 248436375415375196137400104439978655744.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x0898783D)))
;; y should be Float32(0x0898783D [Rational(9992253, 10889035741470030830827987437816582766592), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x002D9BFB)))
;; z should be Float32(0x002D9BFB [Rational(2989051, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x485EA202))))
(check-sat)
(exit)
