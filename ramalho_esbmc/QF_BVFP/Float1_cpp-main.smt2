(set-info :smt-lib-version 2.6)
(set-logic QF_BVFP)
(set-info :source |ESBMC floating-point test cases contributed by Mikhail Ramalho.|)
(set-info :category "crafted")
(set-info :status unsat)

(declare-fun |c::argc'&0#0| () (_ BitVec 32))
(declare-fun |execution_statet::__guard_exec@0!0| () Bool)
(assert (let ((a!1 (fp.geq ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (fp.add roundNearestTiesToEven
                             (fp #b0 #x7b #b10011001100110011001101)
                             (fp #b0 #x7f #b00000010100011110101110)))
                   (fp #b0 #b01111111111 #x199999999999a))))
(let ((a!2 (=> |execution_statet::__guard_exec@0!0|
               (=> (and (bvsge |c::argc'&0#0| #x00000001)
                        (bvsle |c::argc'&0#0| #x7ffffffe))
                   a!1))))
(let ((a!3 (=> (and true
                    (bvsge |c::argc'&0#0| #x00000001)
                    (=> (bvsge |c::argc'&0#0| #x00000001)
                        (bvsle |c::argc'&0#0| #x7ffffffe)))
               a!2)))
  (or (not a!3) (not a!3))))))

(check-sat)
(exit)
